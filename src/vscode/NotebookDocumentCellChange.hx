package vscode;

/**
 * Describes a change to a notebook cell.
 *
 * @see {@link NotebookDocumentChangeEvent}
 */
typedef NotebookDocumentCellChange = {
	/**
	 * The affected notebook.
	 */
	var cell(default, never):NotebookCell;

	/**
	 * The document of the cell or `undefined` when it did not change.
	 *
	 * *Note* that you should use the {@link workspace.onDidChangeTextDocument onDidChangeTextDocument}-event
	 * for detailed change information, like what edits have been performed.
	 */
	var document(default, never):Null<TextDocument>;

	/**
	 * The new metadata of the cell or `undefined` when it did not change.
	 */
	var metadata(default, never):Map<String, Null<Any>>;

	/**
	 * The new outputs of the cell or `undefined` when they did not change.
	 */
	var outputs(default, never):Null<ReadOnlyArray<NotebookCellOutput>>;

	/**
	 * The new execution summary of the cell or `undefined` when it did not change.
	 */
	var executionSummary(default, never):NotebookCellExecutionSummary;
}
