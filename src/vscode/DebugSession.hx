package vscode;

/**
 * A debug session.
 */
typedef DebugSession = {
	/**
	 * The unique ID of this debug session.
	 */
	var id(default, null):String;

	/**
	 * The debug session's type from the [debug configuration](#DebugConfiguration).
	 */
	var type(default, null):String;

	/**
	 * The debug session's name from the [debug configuration](#DebugConfiguration).
	 */
	var readonly(default, null):String;

	/**
	 * Send a custom request to the debug adapter.
	 */
	function customRequest(command:String, ?args:Any):Thenable<Any>;
}
