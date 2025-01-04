package vscode;

/**
 * Describes a structural change to a notebook document, e.g newly added and removed cells.
 *
 * @see {@link NotebookDocumentChangeEvent}
 */
typedef NotebookDocumentContentChange = {
	/**
	 * The range at which cells have been either added or removed.
	 *
	 * Note that no cells have been {@link NotebookDocumentContentChange.removedCells removed}
	 * when this range is {@link NotebookRange.isEmpty empty}.
	 */
	var range(default, null):NotebookRange;

	/**
	 * Cells that have been added to the document.
	 */
	var addedCells(default, null):ReadOnlyArray<NotebookCell>;

	/**
	 * Cells that have been removed from the document.
	 */
	var removedCells(default, null):ReadOnlyArray<NotebookCell>;
}
