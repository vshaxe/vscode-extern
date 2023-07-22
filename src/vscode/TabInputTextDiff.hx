package vscode;

/**
 * The tab represents two text based resources
 * being rendered as a diff.
 */
@:jsRequire("vscode", "TabInputTextDiff")
extern class TabInputTextDiff {
	/**
	 * The uri of the original text resource.
	 */
	var original(default, never):Uri;

	/**
	 * The uri of the modified text resource.
	 */
	var modified(default, never):Uri;

	/**
	 * Constructs a new text diff tab input with the given URIs.
	 * @param original The uri of the original text resource.
	 * @param modified The uri of the modified text resource.
	 */
	function new(original:Uri, modified:Uri);
}
