package vscode;

/**
 * A language model response part containing a piece of text, returned from a {@link LanguageModelChatResponse}.
 */
@:jsRequire("vscode", "LanguageModelTextPart")
extern class LanguageModelTextPart {
	/**
	 * The text content of the part.
	 */
	var value:String;

	/**
	 * Construct a text part with the given content.
	 * @param value The text content of the part.
	 */
	function new(value:String);
}
