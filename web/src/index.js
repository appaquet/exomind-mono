import "core-js/stable";
import "regenerator-runtime/runtime";

import App from './app';
import React from 'react';
import ReactDOM from 'react-dom';
import { initNode } from './exocore';
import Navigation, { BrowserHistory, setupLinkClickNavigation } from "./navigation";
import Constants from "./constants";

Navigation.initialize({
    history: new BrowserHistory(),

    openPopup: (path) => {
        let url = Constants.webUrl + Constants.basePath + path.toString();
        window.open(url, '_blank', 'menubar=no,location=no,status=no,titlebar=no,toolbar=no');
    },

    openExternal: (url) => {
        window.open(url, '_blank');
    }
});

Promise.all([
    new Promise((resolve) => {
        if (window.addEventListener) {
            window.addEventListener('DOMContentLoaded', resolve);
        } else {
            window.attachEvent('onload', resolve);
        }
    }),
    initNode()
]).then(() => {
    ReactDOM.render(<App />, document.getElementById('body'));
    setupLinkClickNavigation();
});