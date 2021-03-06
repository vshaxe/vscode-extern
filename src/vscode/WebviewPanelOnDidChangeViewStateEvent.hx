package vscode;

/**
 * Event fired when a webview panel's view state changes.
 */
typedef WebviewPanelOnDidChangeViewStateEvent = {
	/**
	 * Webview panel whose view state changed.
	 */
	var webviewPanel(default, null):WebviewPanel;
}
