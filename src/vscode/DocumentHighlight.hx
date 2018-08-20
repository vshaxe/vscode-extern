package vscode;

/**
 * A document highlight is a range inside a text document which deserves
 * special attention. Usually a document highlight is visualized by changing
 * the background color of its range.
 */
@:jsRequire("vscode", "DocumentHighlight")
extern class DocumentHighlight {
	/**
	 * The range this highlight applies to.
	 */
	var range:Range;

	/**
	 * The highlight kind, default is [text](#DocumentHighlightKind.Text).
	 */
	var kind:Null<DocumentHighlightKind>;

	/**
	 * Creates a new document highlight object.
	 *
	 * @param range The range the highlight applies to.
	 * @param kind The highlight kind, default is [text](#DocumentHighlightKind.Text).
	 */
	function new(range:Range, ?kind:DocumentHighlightKind);
}
