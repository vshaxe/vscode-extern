package vscode;

/**
 * A comment controller is able to provide [comments](#CommentThread) support to the editor and
 * provide users various ways to interact with comments.
 */
typedef CommentController = {
	/**
	 * The id of this comment controller.
	 */
	var id(default, never):String;

	/**
	 * The human-readable label of this comment controller.
	 */
	var label(default, never):String;

	/**
	 * Optional commenting range provider. Provide a list [ranges](#Range) which support commenting to any given resource uri.
	 *
	 * If not provided, users can leave comments in any document opened in the editor.
	 */
	@:optional var commentingRangeProvider:CommentingRangeProvider;

	/**
	 * Create a [comment thread](#CommentThread). The comment thread will be displayed in visible text editors (if the resource matches)
	 * and Comments Panel once created.
	 *
	 * @param uri The uri of the document the thread has been created on.
	 * @param range The range the comment thread is located within the document.
	 * @param comments The ordered comments of the thread.
	 */
	function createCommentThread(uri:Uri, range:Range, comments:Array<Comment>):CommentThread;

	/**
	 * Dispose this comment controller.
	 *
	 * Once disposed, all [comment threads](#CommentThread) created by this comment controller will also be removed from the editor
	 * and Comments Panel.
	 */
	function dispose():Void;
}
