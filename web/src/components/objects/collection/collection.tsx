import { exocore } from 'exocore';
import { exomind } from "../../../protos";
import React from 'react';
import { EntityTrait } from '../../../store/entities';
import { Children } from '../children/children';
import { Selection } from '../entity-list/selection';
import { ContainerController } from '../container-controller';

interface IProps {
    entity: exocore.index.IEntity;
    collection: EntityTrait<exomind.base.ICollection>;

    selection?: Selection;
    onSelectionChange?: (sel: Selection) => void;
    onEntityAction?: (action: string, entity: exocore.index.IEntity) => void;

    sections?: string[];
    section?: string;
    actionsForSection?: (section: string) => string[];
}

export default class Collection extends React.Component<IProps> {
    constructor(props: IProps) {
        super(props);
    }

    render(): React.ReactNode {
        return (
            <Children
                parent={this.props.entity}

                actionsForSection={this.actionsForChildrenType.bind(this)}

                selection={this.props.selection}
                onSelectionChange={this.props.onSelectionChange}
            />
        );
    }

    private actionsForChildrenType(): string[] {
        return ['done', 'postpone', 'move'];
    }
}
