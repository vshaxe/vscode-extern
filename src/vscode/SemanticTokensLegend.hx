package vscode;

/**
 * A semantic tokens legend contains the needed information to decipher
 * the integer encoded representation of semantic tokens.
 */
@:jsRequire("vscode", "SemanticTokensLegend")
extern class SemanticTokensLegend {
	/**
	 * The possible token types.
	 */
	var tokenTypes(default, null):Array<String>;

	/**
	 * The possible token modifiers.
	 */
	var tokenModifiers(default, null):Array<String>;

	function new(tokenTypes:Array<String>, ?tokenModifiers:Array<String>);
}
