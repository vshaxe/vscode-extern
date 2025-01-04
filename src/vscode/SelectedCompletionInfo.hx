package vscode;

/**
 * Describes the currently selected completion item.
 */
typedef SelectedCompletionInfo = {
	/**
	 * The range that will be replaced if this completion item is accepted.
	 */
	var range(default, null):Range;

	/**
	 * The text the range will be replaced with if this completion is accepted.
	 */
	var text(default, null):String;
}
