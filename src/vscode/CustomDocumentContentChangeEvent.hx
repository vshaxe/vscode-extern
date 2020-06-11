package vscode;

/**
 * Event triggered by extensions to signal to VS Code that the content of a [`CustomDocument`](#CustomDocument)
 * has changed.
 *
 * @see [`CustomDocumentProvider.onDidChangeCustomDocument`](#CustomDocumentProvider.onDidChangeCustomDocument).
 */
typedef CustomDocumentContentChangeEvent<T:CustomDocument> = {
	/**
	 * The document that the change is for.
	 */
	final document:T;
}
