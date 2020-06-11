package vscode;

/**
 * Represents a [comment controller](#CommentController)'s [options](#CommentController.options).
 */
typedef CommentOptions = {
	/**
	 * An optional string to show on the comment input box when it's collapsed.
	 */
	var ?prompt:String;

	/**
	 * An optional string to show as placeholder in the comment input box when it's focused.
	 */
	var ?placeHolder:String;
}
