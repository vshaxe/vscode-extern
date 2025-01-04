package vscode;

/**
 * Represents a part of a chat response that is an anchor, that is rendered as a link to a target.
 */
@:jsRequire("vscode", "ChatResponseAnchorPart")
extern class ChatResponseAnchorPart {
	/**
	 * The target of this anchor.
	 */
	var value:EitherType<Uri, Location>;

	/**
	 * An optional title that is rendered with value.
	 */
	var title:Null<String>;

	/**
	 * Create a new ChatResponseAnchorPart.
	 * @param value A uri or location.
	 * @param title An optional title that is rendered with value.
	 */
	function new(value:EitherType<Uri, Location>, ?title:String);
}
