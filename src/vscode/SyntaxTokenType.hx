package vscode;

/**
 * Enumeration of commonly encountered syntax token types.
 */
@:jsRequire("vscode", "SyntaxTokenType")
extern enum abstract SyntaxTokenType(Int) {
	/**
	 * Everything except tokens that are part of comments, string literals and regular expressions.
	 */
	var Other;

	/**
	 * A comment.
	 */
	var Comment;

	/**
	 * A string literal.
	 */
	@:native("String") var StringLiteral;

	/**
	 * A regular expression.
	 */
	@:native("RegEx") var RegExLiteral;
}
