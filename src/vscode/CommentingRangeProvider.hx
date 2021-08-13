package vscode;

/**
 * Commenting range provider for a {@link CommentController comment controller}.
 */
typedef CommentingRangeProvider = {
	/**
	 * Provide a list of ranges which allow new comment threads creation or null for a given document
	 */
	function provideCommentingRanges(document:TextDocument, token:CancellationToken):ProviderResult<Array<Range>>;
}
