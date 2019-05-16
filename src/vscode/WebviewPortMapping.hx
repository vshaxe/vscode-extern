package vscode;

/**
 * Defines a port mapping used for localhost inside the webview.
 */
typedef WebviewPortMapping = {
	/**
	 * Localhost port to remap inside the webview.
	 */
	var webviewPort(default, null):Int;

	/**
	 * Destination port. The `webviewPort` is resolved to this port.
	 */
	var extensionHostPort(default, null):Int;
}
