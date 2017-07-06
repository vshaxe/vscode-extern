package vscode;

/**
 * Configuration for a debug session.
 */
typedef DebugConfiguration = {
    /**
     * The type for the debug session.
     */
    var type:String;

    /**
     * An optional name for the debug session.
     */
    @:optional var name:String;

    /**
     * The request type of the debug session.
     */
    var request:String;
}
