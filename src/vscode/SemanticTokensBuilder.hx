package vscode;

/**
 * A semantic tokens builder can help with creating a `SemanticTokens` instance
 * which contains delta encoded semantic tokens.
 */
@:jsRequire("vscode", "SemanticTokensBuilder")
extern class SemanticTokensBuilder {
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
	@:overload(function(range:Range, tokenType:String, ?tokenModifiers:Array<String>):Void {})
	function push(line:Int, char:Int, length:Int, tokenType:Int, ?tokenModifiers:Int):Void;

	/**
	 * Finish and create a `SemanticTokens` instance.
	 */
	function build(?resultId:String):SemanticTokens;
}
