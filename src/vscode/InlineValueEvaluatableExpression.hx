package vscode;

/**
 * Provide an inline value through an expression evaluation.
 * If only a range is specified, the expression will be extracted from the underlying document.
 * An optional expression can be used to override the extracted expression.
 */
@:jsRequire("vscode", "InlineValueEvaluatableExpression")
extern class InlineValueEvaluatableExpression {
	/**
	 * The document range for which the inline value applies.
	 * The range is used to extract the evaluatable expression from the underlying document.
	 */
	var range(default, null):Range;

	/**
	 * If specified the expression overrides the extracted expression.
	 */
	var expression(default, null):Null<String>;

	/**
	 * Creates a new InlineValueEvaluatableExpression object.
	 *
	 * @param range The range in the underlying document from which the evaluatable expression is extracted.
	 * @param expression If specified overrides the extracted expression.
	 */
	function new(range:Range, ?expression:String);
}
