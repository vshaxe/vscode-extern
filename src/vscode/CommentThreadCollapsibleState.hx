package vscode;

/**
 * Collapsible state of a [comment thread](#CommentThread)
 */
@:jsRequire("vscode", "CommentThreadCollapsibleState")
extern enum abstract CommentThreadCollapsibleState(Int) {
	/**
	 * Determines an item is collapsed
	 */
	var Collapsed;

	/**
	 * Determines an item is expanded
	 */
	var Expanded;
}
