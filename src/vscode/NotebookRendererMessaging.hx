package vscode;

/**
 * Renderer messaging is used to communicate with a single renderer. It's returned from {@link notebooks.createRendererMessaging}.
 */
typedef NotebookRendererMessaging = {
	/**
	 * An event that fires when a message is received from a renderer.
	 */
	var onDidReceiveMessage(default, null):Event<{
		final editor:NotebookEditor;
		final message:Any;
	}>;

	/**
	 * Send a message to one or all renderer.
	 *
	 * @param message Message to send
	 * @param editor Editor to target with the message. If not provided, the
	 * message is sent to all renderers.
	 * @returns a boolean indicating whether the message was successfully
	 * delivered to any renderer.
	 */
	function postMessage(message:Any, ?editor:NotebookEditor):Thenable<Bool>;
}
