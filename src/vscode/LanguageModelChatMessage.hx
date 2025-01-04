package vscode;

/**
 * Represents a message in a chat. Can assume different roles, like user or assistant.
 */
@:jsRequire("vscode", "LanguageModelChatMessage")
extern class LanguageModelChatMessage {
	/**
	 * Utility to create a new user message.
	 *
	 * @param content The content of the message.
	 * @param name The optional name of a user for the message.
	 */
	static function User(content:EitherType<String, Array<EitherType<LanguageModelTextPart, LanguageModelToolResultPart>>>,
		?name:String):LanguageModelChatMessage;

	/**
	 * Utility to create a new assistant message.
	 *
	 * @param content The content of the message.
	 * @param name The optional name of a user for the message.
	 */
	static function Assistant(content:EitherType<String, Array<EitherType<LanguageModelTextPart, LanguageModelToolCallPart>>>,
		?name:String):LanguageModelChatMessage;

	/**
	 * The role of this message.
	 */
	var role:LanguageModelChatMessageRole;

	/**
	 * A string or heterogeneous array of things that a message can contain as content. Some parts may be message-type
	 * specific for some models.
	 */
	var content:Array<EitherType<LanguageModelTextPart, EitherType<LanguageModelToolResultPart, LanguageModelToolCallPart>>>;

	/**
	 * The optional name of a user for this message.
	 */
	var name:Null<String>;

	/**
	 * Create a new user message.
	 *
	 * @param role The role of the message.
	 * @param content The content of the message.
	 * @param name The optional name of a user for the message.
	 */
	function new(role:LanguageModelChatMessageRole,
		content:EitherType<String, Array<EitherType<LanguageModelTextPart, EitherType<LanguageModelToolResultPart, LanguageModelToolCallPart>>>>, ?name:String);
}
