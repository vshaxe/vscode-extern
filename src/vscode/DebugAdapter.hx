package vscode;

/**
 * A debug adapter that implements the Debug Adapter Protocol can be registered with VS Code if it implements the DebugAdapter interface.
 */
typedef DebugAdapter = /*Disposable &*/ {
	/**
	 * An event which fires after the debug adapter has sent a Debug Adapter Protocol message to VS Code.
	 * Messages can be requests, responses, or events.
	 */
	var onDidSendMessage(default, null):Event<DebugProtocolMessage>;

	/**
	 * Handle a Debug Adapter Protocol message.
	 * Messages can be requests, responses, or events.
	 * Results or errors are returned via onSendMessage events.
	 * @param message A Debug Adapter Protocol message
	 */
	function handleMessage(message:DebugProtocolMessage):Void;
}
