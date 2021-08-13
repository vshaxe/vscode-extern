package vscode;

/**
 * An event describing a transactional {@link TextDocument document} change.
 */
typedef TextDocumentChangeEvent = {
	/**
	 * The affected document.
	 */
	var document(default, null):TextDocument;

	/**
	 * An array of content changes.
	 */
	var contentChanges(default, null):ReadOnlyArray<TextDocumentContentChangeEvent>;

	/**
	 * The reason why the document was changed.
	 * Is undefined if the reason is not known.
	 */
	var ?reason(default, null):TextDocumentChangeReason;
}
