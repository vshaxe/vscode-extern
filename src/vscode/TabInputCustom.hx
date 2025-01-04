package vscode;

/**
 * The tab represents a custom editor.
 */
@:jsRequire("vscode", "TabInputCustom")
extern class TabInputCustom {
	/**
	 * The uri that the tab is representing.
	 */
	var uri(default, null):Uri;

	/**
	 * The type of custom editor.
	 */
	var viewType(default, null):String;

	/**
	 * Constructs a custom editor tab input.
	 * @param uri The uri of the tab.
	 * @param viewType The viewtype of the custom editor.
	 */
	function new(uri:Uri, viewType:String);
}
