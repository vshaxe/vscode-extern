package vscode;

/**
 * Reactions of a {@link Comment}
 */
typedef CommentReaction = {
	/**
	 * The human-readable label for the reaction
	 */
	var label(default, null):String;

	/**
	 * Icon for the reaction shown in UI.
	 */
	var iconPath(default, null):EitherType<String, Uri>;

	/**
	 * The number of users who have reacted to this reaction
	 */
	var count(default, null):Int;

	/**
	 * Whether the [author](CommentAuthorInformation) of the comment has reacted to this reaction
	 */
	var authorHasReacted(default, null):Bool;
}
