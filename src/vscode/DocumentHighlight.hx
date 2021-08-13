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
	 * The highlight kind, default is {@link DocumentHighlightKind.Text text}.
	 */
	var kind:Null<DocumentHighlightKind>;

	/**
	 * Creates a new document highlight object.
	 *
	 * @param range The range the highlight applies to.
	 * @param kind The highlight kind, default is {@link DocumentHighlightKind.Text text}.
	 */
	function new(range:Range, ?kind:DocumentHighlightKind);
}
