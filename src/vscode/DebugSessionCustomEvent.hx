package vscode;

/**
 * A custom Debug Adapter Protocol event received from a [debug session](#DebugSession).
 */
typedef DebugSessionCustomEvent = {
	/**
	 * The [debug session](#DebugSession) for which the custom event was received.
	 */
	var session(default, null):DebugSession;

	/**
	 * Type of event.
	 */
	var event(default, null):String;

	/**
	 * Event specific information.
	 */
	@:optional var body(default, null):Any;
}
