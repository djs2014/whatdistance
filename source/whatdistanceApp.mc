import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;
using WhatAppBase;
class whatdistanceApp extends Application.AppBase {
var whatApp = null as WhatAppBase.WhatApp;
    function initialize() {
        AppBase.initialize();
        whatApp = new WhatAppBase.WhatApp();
    var appName = Application.loadResource(Rez.Strings.AppName) as Lang.String;
    whatApp.setAppName(appName);
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
    }

    //! Return the initial view of your application here
    function getInitialView() as Array<Views or InputDelegates>? {
        return whatApp.getInitialView();
    }

    function onSettingsChanged() { whatApp.onSettingsChanged(); }
}

function getApp() as whatdistanceApp {
    return Application.getApp() as whatdistanceApp;
}