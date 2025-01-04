package vscode;

/**
 * Represents a part of a chat response that is a button that executes a command.
 */
@:jsRequire("vscode", "ChatResponseCommandButtonPart")
extern class ChatResponseCommandButtonPart {
	/**
	 * The command that will be executed when the button is clicked.
	 */
	var value:Command;

	/**
	 * Create a new ChatResponseCommandButtonPart.
	 * @param value A Command that will be executed when the button is clicked.
	 */
	function new(value:Command);
}
