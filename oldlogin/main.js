const {app, BrowserWindow, session} = require('electron');
var index = require('./app/index');

  let win

  function createWindow () {
    win =  new  BrowserWindow ({
		 height: 660,
		 width: 800,
		 minHeight: 660,
		 minWidth: 400,
		 webPreferences : {
			 nodeIntegration :  false
			 }
	});

	webPreferences: {
		nodeIntegration: true
	}

	win.setMenu(null);

	// Query all cookies.
      session.defaultSession.cookies.get({}, (error, cookies) => {
        //console.log(error, cookies)
      })

      // Query all cookies associated with a specific url.
      session.defaultSession.cookies.get({url: 'http://rabotyag.ga'}, (error, cookies) => {
        //console.log(error, cookies)
      })

      // Set a cookie with the given cookie data;
      // may overwrite equivalent cookies if they exist.
      const cookie = {url: 'http://rabotyag.ga', name: 'dummy_name', value: 'dummy'}
      session.defaultSession.cookies.set(cookie, (error) => {
        if (error) console.error(error)
      })

    win.loadURL('http://rabotyag.ga')

    //win.webContents.openDevTools()

    win.on('closed', () => {
      win = null
    })
  }

  app.on('ready', createWindow)

  app.on('window-all-closed', () => {

    if (process.platform !== 'darwin') {
      app.quit()
    }
  })

  app.on('activate', () => {

    if (win === null) {
      createWindow()
    }
  })
