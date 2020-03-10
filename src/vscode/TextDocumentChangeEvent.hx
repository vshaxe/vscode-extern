package vscode;

/**
 * An event describing a transactional [document](#TextDocument) change.
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
}
