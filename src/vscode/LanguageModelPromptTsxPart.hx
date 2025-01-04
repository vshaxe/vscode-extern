package vscode;

/**
 * A language model response part containing a PromptElementJSON from `@vscode/prompt-tsx`.
 * @see {@link LanguageModelToolResult}
 */
@:jsRequire("vscode", "LanguageModelPromptTsxPart")
extern class LanguageModelPromptTsxPart {
	/**
	 * The value of the part.
	 */
	var value:Any;

	/**
	 * Construct a prompt-tsx part with the given content.
	 * @param value The value of the part, the result of `renderPromptElementJSON` from `@vscode/prompt-tsx`.
	 */
	function new(value:Any);
}
