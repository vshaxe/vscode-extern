package vscode;

/**
 * A custom Debug Adapter Protocol event received from a {@link DebugSession debug session}.
 */
typedef DebugSessionCustomEvent = {
	/**
	 * The {@link DebugSession debug session} for which the custom event was received.
	 */
	var session(default, null):DebugSession;

	/**
	 * Type of event.
	 */
	var event(default, null):String;

	/**
	 * Event specific information.
	 */
	var ?body(default, null):Any;
}
