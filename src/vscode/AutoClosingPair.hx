package vscode;

/**
 * Describes pairs of strings where the close string will be automatically inserted when typing the opening string.
 */
typedef AutoClosingPair = {
	/**
	 * The string that will trigger the automatic insertion of the closing string.
	 */
	var open:String;

	/**
	 * The closing string that will be automatically inserted when typing the opening string.
	 */
	var close:String;

	/**
	 * A set of tokens where the pair should not be auto closed.
	 */
	var ?notIn:Array<SyntaxTokenType>;
}
