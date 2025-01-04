package vscode;

/**
 * Extra context passed to a participant.
 */
typedef ChatContext = {
	/**
	 * All of the chat messages so far in the current chat session. Currently, only chat messages for the current participant are included.
	 */
	var history(default, null):ReadOnlyArray<EitherType<ChatRequestTurn, ChatResponseTurn>>;
}
