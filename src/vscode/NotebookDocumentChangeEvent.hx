package vscode;

typedef NotebookDocumentChangeEvent = {
	/**
	 * The affected notebook.
	 */
	var notebook(default, never):NotebookDocument;

	/**
	 * The new metadata of the notebook or `undefined` when it did not change.
	 */
	var metadata(default, never):Map<String, Any>;

	/**
	 * An array of content changes describing added or removed {@link NotebookCell cells}.
	 */
	var contentChanges(default, never):ReadOnlyArray<NotebookDocumentContentChange>;

	/**
	 * An array of {@link NotebookDocumentCellChange cell changes}.
	 */
	var cellChanges(default, never):ReadOnlyArray<NotebookDocumentCellChange>;
}
