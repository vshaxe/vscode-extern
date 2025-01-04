package vscode;

/**
 * A tool-calling mode for the language model to use.
 */
@:jsRequire("vscode", "LanguageModelChatToolMode")
extern enum abstract LanguageModelChatToolMode(Int) {
	/**
	 * The language model can choose to call a tool or generate a message. Is the default.
	 */
	var Auto;

	/**
	 * The language model must call one of the provided tools. Note- some models only support a single tool when using this
	 * mode.
	 */
	var Required;
}
