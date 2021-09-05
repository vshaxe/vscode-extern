package vscode;

/**
 * Event triggered by extensions to signal to the editor that the content of a {@linkcode CustomDocument}
 * has changed.
 *
 * @see {@linkcode CustomEditorProvider.onDidChangeCustomDocument}.
 */
typedef CustomDocumentContentChangeEvent<T:CustomDocument> = {
	/**
	 * The document that the change is for.
	 */
	final document:T;
}
