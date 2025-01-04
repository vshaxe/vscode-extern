package vscode;

/**
 * A result returned from a tool invocation. If using `@vscode/prompt-tsx`, this result may be rendered using a `ToolResult`.
 */
@:jsRequire("vscode", "LanguageModelToolResult")
extern class LanguageModelToolResult {
	/**
	 * A list of tool result content parts. Includes `unknown` becauses this list may be extended with new content types in
	 * the future.
	 * @see {@link lm.invokeTool}.
	 */
	var content:Array<EitherType<LanguageModelTextPart, LanguageModelPromptTsxPart>>;

	/**
	 * Create a LanguageModelToolResult
	 * @param content A list of tool result content parts
	 */
	function new(content:Array<EitherType<LanguageModelTextPart, LanguageModelPromptTsxPart>>);
}
