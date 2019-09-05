package vscode;

/**
 * A webview displays html content, like an iframe.
 */
typedef Webview = {
	/**
	 * Content settings for the webview.
	 */
	var options:WebviewOptions;

	/**
	 * Contents of the webview.
	 *
	 * Should be a complete html document.
	 */
	var html:String;

	/**
	 * Fired when the webview content posts a message.
	 *
	 * Webview content can post strings or json serilizable objects back to a VS Code extension. They cannot
	 * post `Blob`, `File`, `ImageData` and other DOM specific objects since the extension that receives the
	 * message does not run in a browser environment.
	 */
	var onDidReceiveMessage(default, null):Event<Any>;

	/**
	 * Post a message to the webview content.
	 *
	 * Messages are only delivered if the webview is live (either visible or in the
	 * background with `retainContextWhenHidden`).
	 *
	 * @param message Body of the message. This must be a string or other json serilizable object.
	 */
	function postMessage(message:Any):Thenable<Bool>;

	/**
	 * Convert a uri for the local file system to one that can be used inside webviews.
	 *
	 * Webviews cannot directly load resources from the workspace or local file system using `file:` uris. The
	 * `asWebviewUri` function takes a local `file:` uri and converts it into a uri that can be used inside of
	 * a webview to load the same resource:
	 *
	 * ```ts
	 * webview.html = `<img src="${webview.asWebviewUri(vscode.Uri.file('/Users/codey/workspace/cat.gif'))}">`
	 * ```
	 */
	function asWebviewUri(localResource:Uri):Uri;

	/**
	 * Content security policy source for webview resources.
	 *
	 * This is the origin that should be used in a content security policy rule:
	 *
	 * ```
	 * img-src https: ${webview.cspSource} ...;
	 * ```
	 */
	var cspSource(default, null):String;
}
