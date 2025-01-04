package vscode;

/**
 * An event describing a transactional {@link NotebookDocument notebook} change.
 */
typedef NotebookDocumentChangeEvent = {
	/**
	 * The affected notebook.
	 */
	var notebook(default, null):NotebookDocument;

	/**
	 * The new metadata of the notebook or `undefined` when it did not change.
	 */
	var metadata(default, null):Null<DynamicAccess<Any>>;

	/**
	 * An array of content changes describing added or removed {@link NotebookCell cells}.
	 */
	var contentChanges(default, null):ReadOnlyArray<NotebookDocumentContentChange>;

	/**
	 * An array of {@link NotebookDocumentCellChange cell changes}.
	 */
	var cellChanges(default, null):ReadOnlyArray<NotebookDocumentCellChange>;
}
