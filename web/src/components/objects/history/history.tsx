import classNames from 'classnames';
import { Exocore, exocore, MutationBuilder, QueryBuilder } from 'exocore';
import React from 'react';
import { exomind } from '../../../protos';
import { EntityTraits } from '../../../store/entities';
import { ExpandableQuery } from '../../../store/queries';
import { ContainerController } from '../container-controller';
import EntityAction from '../entity-list/entity-action';
import { EntityList } from '../entity-list/entity-list';
import { Selection } from '../entity-list/selection';
import { Message } from '../message';
import './history.less';

interface IProps {
    selection?: Selection;
    onSelectionChange?: (sel: Selection) => void;
    onEntityAction?: (action: string, entity: exocore.index.IEntity) => void;

    containerController?: ContainerController;
}

export default class History extends React.Component<IProps> {
    private entityQuery: ExpandableQuery;

    constructor(props: IProps) {
        super(props);

        const childrenQuery = QueryBuilder
            .all()
            .orderByOperationIds(false)
            .includeDeleted()
            .count(30)
            .build();
        this.entityQuery = new ExpandableQuery(childrenQuery, () => {
            this.setState({});
        })

        if (props.containerController) {
            props.containerController.title = 'History';
            props.containerController.icon = 'history';
        }

        this.state = {};
    }

    componentWillUnmount(): void {
        this.entityQuery.free();
    }

    render(): React.ReactNode {
        if (this.entityQuery.hasResults) {
            const classes = classNames({
                'entity-component': true,
                'history': true,
            });

            const entities = Array.from(this.entityQuery.results()).map((res) => {
                return res.entity;
            });

            return (
                <div className={classes}>
                    <EntityList
                        entities={entities}

                        onRequireLoadMore={this.handleLoadMore.bind(this)}

                        selection={this.props.selection}
                        onSelectionChange={this.props.onSelectionChange}
                        actionsForEntity={this.actionsForEntity.bind(this)}

                        draggable={false}
                        droppable={false}
                    />
                </div>
            );

        } else {
            return <Message text="Loading..." showAfterMs={500} />;
        }
    }

    private handleLoadMore() {
        this.entityQuery.expand();
    }

    private actionsForEntity(et: EntityTraits): EntityAction[] {
        return [
            new EntityAction('inbox', this.handleEntityMoveInbox.bind(this, et)),
        ];
    }

    private handleEntityMoveInbox(et: EntityTraits) {
        const mb = MutationBuilder
            .updateEntity(et.id)
            .putTrait(new exomind.base.CollectionChild({
                collection: new exocore.index.Reference({
                    entityId: 'inbox',
                }),
                weight: new Date().getTime(),
            }), 'child_inbox')
            .build();
        Exocore.store.mutate(mb);

        if (this.props.onEntityAction) {
            this.props.onEntityAction('inbox', et.entity);
        }
    }
}
