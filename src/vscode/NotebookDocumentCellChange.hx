package vscode;

/**
 * Describes a change to a notebook cell.
 *
 * @see {@link NotebookDocumentChangeEvent}
 */
typedef NotebookDocumentCellChange = {
	/**
	 * The affected cell.
	 */
	var cell(default, null):NotebookCell;

	/**
	 * The document of the cell or `undefined` when it did not change.
	 *
	 * *Note* that you should use the {@link workspace.onDidChangeTextDocument onDidChangeTextDocument}-event
	 * for detailed change information, like what edits have been performed.
	 */
	var document(default, null):Null<TextDocument>;

	/**
	 * The new metadata of the cell or `undefined` when it did not change.
	 */
	var metadata(default, null):Null<DynamicAccess<Any>>;

	/**
	 * The new outputs of the cell or `undefined` when they did not change.
	 */
	var outputs(default, null):Null<ReadOnlyArray<NotebookCellOutput>>;

	/**
	 * The new execution summary of the cell or `undefined` when it did not change.
	 */
	var executionSummary(default, null):Null<NotebookCellExecutionSummary>;
}
