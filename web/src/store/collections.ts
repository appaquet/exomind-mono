import { exocore, Exocore, QueryBuilder, WatchedQueryWrapper } from "exocore";
import { memoize } from "lodash";
import { observable, ObservableMap, runInAction } from "mobx";
import { exomind } from "../protos";
import { EntityTrait, EntityTraits, TraitIcon } from "./entities";

export class CollectionStore {
    @observable private refreshAll = 0;
    private entityParents: Map<string, Parents> = observable.map();
    private collections: ObservableMap<string, EntityTrait<exomind.base.ICollection>> = observable.map();
    private query: WatchedQueryWrapper = null;

    getEntityParents(entity: EntityTraits): Parents | null {
        this.refreshAll; // used to notify we need to refresh all

        const cacheKey = this.uniqueEntityId(entity);

        let parents = this.entityParents.get(cacheKey)
        if (parents) {
            return parents;
        }

        parents = this.getEntityParentsInner(entity);

        // prevent notifying components that call `getParents` in their render
        setTimeout(() => {
            runInAction(() => {
                this.entityParents.set(cacheKey, parents);
            });
        });

        return parents;
    }

    fetchCollections(): void {
        const query = QueryBuilder
            .withTrait(exomind.base.Collection)
            .count(9999)
            .project(new exocore.store.Projection({
                package: ["exomind.base.Collection"],
            }))
            .build();

        if (this.query) {
            this.query.free();
            this.query  = null;
        }

        this.query = Exocore.store.watchedQuery(query);
        this.query.onChange((results) => {
            runInAction(() => {
                for (const entity of results.entities) {
                    const et = new EntityTraits(entity.entity);
                    const col = et.traitOfType<exomind.base.ICollection>(exomind.base.Collection);
                    this.updateEntityCollection(entity.entity.id, col);
                }

                if (this.collections.size == 0) {
                    this.refreshAll += 1;
                }
            });
        });
    }

    private getEntityParentsInner(entity: EntityTraits, lineage?: Set<string>): (Parents | null) {
        const parents = new Parents();

        const colChildren = entity.traitsOfType<exomind.base.ICollectionChild>(exomind.base.CollectionChild);
        for (const colChild of colChildren) {
            const parentId = colChild.message.collection.entityId;
            if (parents.isFetched(parentId) || (lineage?.has(parentId) ?? false)) {
                // the collection got already fetched, either because we have it twice in our parents, or because it's part of the lineage already
                continue;
            }

            const collection = this.collections.get(parentId);
            if (!collection) {
                continue;
            }

            const parent: EntityParent = {
                entityId: collection.et.id,
                icon: collection.icon,
                name: collection.displayName,
                collection: collection.message,
            };
            parents.add(parent);

            const thisLineage = new Set(lineage);
            thisLineage.add(parentId);
            const grandParents = this.getEntityParentsInner(collection.et, thisLineage);

            parent.parents = grandParents.get();
            sortCollections(parent.parents);
            if (parent.parents.length > 0) {
                parent.minParent = parent.parents[0];
            }
        }

        return parents;
    }

    // create a unique cache key with entity id and operation id of collection child relations
    private uniqueEntityId(entity: EntityTraits): string {
        let key = entity.id;
        const colChildren = entity.traitsOfType<exomind.base.ICollectionChild>(exomind.base.CollectionChild);
        for (const childOf of colChildren) {
            key += childOf.trait.lastOperationId;
        }
        return key;
    }

    private updateEntityCollection(entityId: string, col: EntityTrait<exomind.base.ICollection> | null) {
        const current = this.collections.get(entityId);
        if (current && current.trait.lastOperationId == col.trait.lastOperationId) {
            // not changed
            return;
        }

        if (col) {
            // this.collectionQueries.set(entityId, Promise.resolve(col));
            this.collections.set(entityId, col);
        } else {
            this.collections.delete(entityId);
        }

        // invalidate cache for all entities for which we fetched parents in which we are
        for (const parentId of this.entityParents.keys()) {
            const parent = this.entityParents.get(parentId);
            const ids = parent.allIds();
            if (ids.has(entityId)) {
                this.entityParents.delete(parentId);
            }
        }
    }
}

export interface EntityParent {
    entityId: string;
    icon: TraitIcon;
    name: string;
    collection: exomind.base.ICollection;
    parents?: EntityParent[];

    minParent?: EntityParent;
}

export class Parents {
    parents: Map<string, EntityParent> = new Map();

    add(parent: EntityParent): void {
        this.parents.set(parent.entityId, parent);
    }

    get(): EntityParent[] {
        const parents = Array.from(this.parents.values());
        sortCollections(parents);
        return parents;
    }

    allIds = memoize((): Set<string> => {
        const ids = new Set<string>();

        const getParents = (parent: EntityParent) => {
            ids.add(parent.entityId);
            for (const gParent of parent.parents) {
                if (!ids.has(gParent.entityId)) {
                    ids.add(gParent.entityId);
                    getParents(gParent);
                }
            }
        };
        for (const parent of this.parents.values()) {
            getParents(parent);
        }

        return ids;
    });

    isFetched(id: string): boolean {
        return this.parents.has(id);
    }
}

function minLineage(parents: EntityParent[], init = 0): [number, EntityParent | null] {
    if (parents.length == 0) {
        return [init, null];
    }

    let minLength = 0;
    let minCol: EntityParent = null;
    for (const parent of parents) {
        const [length,] = minLineage(parent.parents, init + 1);
        if (!minCol || length < minLength) {
            minLength = length;
            minCol = parent;
        }
    }

    return [init + minLength, minCol];
}

function sortCollections(parents: EntityParent[]): void {
    if (parents.length <= 1) {
        return;
    }

    parents.sort((a, b) => {
        const [aLin,] = minLineage(a.parents);
        const [bLin,] = minLineage(b.parents);
        if (aLin == bLin) {
            return a.name.localeCompare(b.name);
        } else {
            return aLin - bLin;
        }
    });
}

export function flattenHierarchy(parent: EntityParent): EntityParent[] {
    const out = [];

    while (parent != null) {
        if (parent.entityId == 'favorites') {
            break;
        }

        out.push(parent);

        if (!parent.minParent) {
            break;
        }
        parent = parent.minParent;
    }

    return out.reverse();
}