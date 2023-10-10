package vscode;

/**
 * The tab represents a webview.
 */
@:jsRequire("vscode", "TabInputWebview")
extern class TabInputWebview {
	/**
	 * The type of webview. Maps to {@linkcode WebviewPanel.viewType WebviewPanel's viewType}
	 */
	var viewType(default, never):String;

	/**
	 * Constructs a webview tab input with the given view type.
	 * @param viewType The type of webview. Maps to {@linkcode WebviewPanel.viewType WebviewPanel's viewType}
	 */
	function new(viewType:String);
}
