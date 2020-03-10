package vscode;

/**
 * An EvaluatableExpression represents an expression in a document that can be evaluated by an active debugger or runtime.
 * The result of this evaluation is shown in a tooltip-like widget.
 * If only a range is specified, the expression will be extracted from the underlying document.
 * An optional expression can be used to override the extracted expression.
 * In this case the range is still used to highlight the range in the document.
 */
@:jsRequire("vscode", "EvaluatableExpression")
extern class EvaluatableExpression {
	/*
	 * The range is used to extract the evaluatable expression from the underlying document and to highlight it.
	 */
	var range(default, null):Range;

	/*
	 * If specified the expression overrides the extracted expression.
	 */
	var expression(default, null):Null<String>;

	/**
	 * Creates a new evaluatable expression object.
	 *
	 * @param range The range in the underlying document from which the evaluatable expression is extracted.
	 * @param expression If specified overrides the extracted expression.
	 */
	function new(range:Range, ?expression:String);
}
