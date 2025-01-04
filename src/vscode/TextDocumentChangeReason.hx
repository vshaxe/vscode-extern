package vscode;

/**
 * Reasons for why a text document has changed.
 */
@:jsRequire("vscode", "TextDocumentChangeReason")
extern enum abstract TextDocumentChangeReason(Int) {
	/** The text change is caused by an undo operation. */
	final Undo;

	/** The text change is caused by an redo operation. */
	final Redo;
}
