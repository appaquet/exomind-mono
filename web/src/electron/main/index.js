'use strict'
/* eslint-env node */

import { app, BrowserWindow, ipcMain } from 'electron'
import * as path from 'path'
import { format as formatUrl } from 'url'

const isDevelopment = process.env.NODE_ENV !== 'production'
const autoDevTool = false;


function createNewWindow() {
  const window = new BrowserWindow({
    webPreferences: { nodeIntegration: true },
    autoHideMenuBar: true,
  });
  window.setMenuBarVisibility(false);

  if (isDevelopment && autoDevTool) {
    window.webContents.openDevTools();
  }

  if (isDevelopment) {
    window.loadURL(`http://localhost:${process.env.ELECTRON_WEBPACK_WDS_PORT}`);
  }
  else {
    window.loadURL(formatUrl({
      pathname: path.join(__dirname, 'index.html'),
      protocol: 'file',
      slashes: true,
    }))
  }

  return window;
}

let mainWindow;
function createMainWindow() {
  const window = createNewWindow();
  window.on('closed', () => {
    mainWindow = null;
  })

  window.webContents.on('devtools-opened', () => {
    window.focus();
    setImmediate(() => {
      window.focus();
    })
  })

  return window;
}

// quit application when all windows are closed
app.on('window-all-closed', () => {
  // on macOS it is common for applications to stay open until the user explicitly quits
  if (process.platform !== 'darwin') {
    app.quit();
  }
})

app.on('activate', () => {
  // on macOS it is common to re-create a window even after all windows have been closed
  if (mainWindow === null) {
    mainWindow = createMainWindow()
  }
})

// create main BrowserWindow when electron is ready
app.on('ready', () => {
  mainWindow = createMainWindow();
})

ipcMain.on('open-popup', (event, navPath) => {
  const window = createNewWindow();

  window.webContents.on('did-finish-load', () => {
    window.webContents.send('navigate', navPath);
  });
});