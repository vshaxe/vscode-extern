package vscode;

/**
 * Event triggered by extensions to signal to the editor that the content of a {@link CustomDocument `CustomDocument`}
 * has changed.
 *
 * @see {@link CustomEditorProvider.onDidChangeCustomDocument `CustomEditorProvider.onDidChangeCustomDocument`}.
 */
typedef CustomDocumentContentChangeEvent<T:CustomDocument> = {
	/**
	 * The document that the change is for.
	 */
	final document:T;
}
