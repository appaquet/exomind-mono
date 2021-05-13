
import React from 'react';
import './settings.less';
import Navigation from '../../../navigation';
import { observer } from 'mobx-react';
import { IStores, StoresContext } from '../../../stores/stores';

@observer
export default class Settings extends React.Component {
  static contextType = StoresContext;
  declare context: IStores;

  render(): React.ReactNode {
    return (
      <div className="settings">
        <ul>
          <li><a href={Navigation.pathForEntity('favorites')}><span className="fa fa-star" /> Edit favorites</a></li>
          <li><a href={Navigation.pathForNodeConfig()}><span className="fa fa-wrench" /> Node config</a></li>
          <li><a href="#" target="local" onClick={this.toggleDarkMode}><span className="fa fa-moon-o" /> Change theme</a></li>
        </ul>
      </div>
    );
  }

  private toggleDarkMode = (e: React.MouseEvent) => {
    e.preventDefault();
    this.context.settings.toggleDarkMode();
    return false;
  }
}