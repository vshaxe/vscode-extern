package vscode;

/**
 * Represents a chat participant's response in chat history.
 */
@:jsRequire("vscode", "ChatResponseTurn")
extern class ChatResponseTurn {
	/**
	 * The content that was received from the chat participant. Only the stream parts that represent actual content (not metadata) are represented.
	 */
	var response(default,
		null):ReadOnlyArray<EitherType<ChatResponseMarkdownPart,
			EitherType<ChatResponseFileTreePart, EitherType<ChatResponseAnchorPart, ChatResponseCommandButtonPart>>>>;

	/**
	 * The result that was received from the chat participant.
	 */
	var result(default, null):ChatResult;

	/**
	 * The id of the chat participant that this response came from.
	 */
	var participant(default, null):String;

	/**
	 * The name of the command that this response came from.
	 */
	var command(default, null):Null<String>;

	/**
	 * @hidden
	 */
	private function new(response:ReadOnlyArray<EitherType<ChatResponseMarkdownPart,
		EitherType<ChatResponseFileTreePart, EitherType<ChatResponseAnchorPart, ChatResponseCommandButtonPart>>>>,
		result:ChatResult, participant:String);
}
