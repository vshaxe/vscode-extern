package vscode;

/**
 * An event describing a transactional [document](#TextDocument) change.
 */
typedef TextDocumentChangeEvent = {
	/**
	 * The affected document.
	 */
	var document:TextDocument;

	/**
	 * An array of content changes.
	 */
	var contentChanges:Array<TextDocumentContentChangeEvent>;
}
