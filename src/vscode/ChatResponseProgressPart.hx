package vscode;

/**
 * Represents a part of a chat response that is a progress message.
 */
@:jsRequire("vscode", "ChatResponseProgressPart")
extern class ChatResponseProgressPart {
	/**
	 * The progress message
	 */
	var value:String;

	/**
	 * Create a new ChatResponseProgressPart.
	 * @param value A progress message
	 */
	function new(value:String);
}
