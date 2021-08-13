package vscode;

/**
 * Collapsible state of a {@link CommentThread comment thread}
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
