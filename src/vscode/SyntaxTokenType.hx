package vscode;

@:jsRequire("vscode", "SyntaxTokenType")
extern enum abstract SyntaxTokenType(Int) {
	/**
	 * Everything except tokens that are part of comments, string literals and regular expressions.
	 */
	var Other = 0;

	/**
	 * A comment.
	 */
	var Comment = 1;

	/**
	 * A string literal.
	 */
	var String = 2;

	/**
	 * A regular expression.
	 */
	var RegEx = 3;
}
