package vscode;

/**
 * The tab represents a single text based resource.
 */
@:jsRequire("vscode", "TabInputText")
extern class TabInputText {
	/**
	 * The uri represented by the tab.
	 */
	var uri(default, null):Uri;

	/**
	 * Constructs a text tab input with the given URI.
	 * @param uri The URI of the tab.
	 */
	function new(uri:Uri);
}
