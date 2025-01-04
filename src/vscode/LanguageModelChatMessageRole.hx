package vscode;

/**
 * Represents the role of a chat message. This is either the user or the assistant.
 */
@:jsRequire("vscode", "LanguageModelChatMessageRole")
extern enum abstract LanguageModelChatMessageRole(Int) {
	/**
	 * The user role, e.g the human interacting with a language model.
	 */
	var User;

	/**
	 * The assistant role, e.g. the language model generating responses.
	 */
	var Assistant;
}
