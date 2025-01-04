package vscode;

/**
 * A semantic tokens builder can help with creating a `SemanticTokens` instance
 * which contains delta encoded semantic tokens.
 */
@:jsRequire("vscode", "SemanticTokensBuilder")
extern class SemanticTokensBuilder {
	/**
	 * Creates a semantic tokens builder.
	 *
	 * @param legend A semantic tokens legend.
	 */
	function new(?legend:SemanticTokensLegend);

	/**
	 * Add another token.
	 *
	 * @param line The token start line number (absolute value).
	 * @param char The token start character (absolute value).
	 * @param length The token length in characters.
	 * @param tokenType The encoded token type.
	 * @param tokenModifiers The encoded token modifiers.
	 */
	overload function push(line:Int, char:Int, length:Int, tokenType:Int, ?tokenModifiers:Int):Void;

	/**
	 * Add another token. Use only when providing a legend.
	 *
	 * @param range The range of the token. Must be single-line.
	 * @param tokenType The token type.
	 * @param tokenModifiers The token modifiers.
	 */
	overload function push(range:Range, tokenType:String, ?tokenModifiers:ReadOnlyArray<String>):Void;

	/**
	 * Finish and create a `SemanticTokens` instance.
	 */
	function build(?resultId:String):SemanticTokens;
}
