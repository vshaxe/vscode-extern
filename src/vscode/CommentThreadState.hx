package vscode;

/**
 * The state of a comment thread.
 */
@:jsRequire("vscode", "CommentThreadState")
extern enum abstract CommentThreadState(Int) {
	var Unresolved;
	var Resolved;
}
