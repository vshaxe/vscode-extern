package vscode;

/**
 * The ranges a CommentingRangeProvider enables commenting on.
 */
typedef CommentingRanges = {
	/**
	 * Enables comments to be added to a file without a specific range.
	 */
	var enableFileComments:Bool;

	/**
	 * The ranges which allow new comment threads creation.
	 */
	var ?ranges:Array<Range>;
}
