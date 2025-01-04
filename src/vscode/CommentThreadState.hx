package vscode;

/**
 * The state of a comment thread.
 */
@:jsRequire("vscode", "CommentThreadState")
extern enum abstract CommentThreadState(Int) {
	/**
	 * Unresolved thread state
	 */
	var Unresolved;

	/**
	 * Resolved thread state
	 */
	var Resolved;
}
