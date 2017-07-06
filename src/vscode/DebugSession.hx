package vscode;

import js.Promise.Thenable;

/**
 * A debug session.
 */
typedef DebugSession = {
    /**
     * The debug session's type from the debug configuration.
     */
    var type(default,null):String;

    /**
     * The debug session's name from the debug configuration.
     */
    var readonly(default,null):String;

    /**
     * Send a custom request to the debug adapter.
     */
    function customRequest(command:String, ?args:Any):Thenable<Any>;
}
