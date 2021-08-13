package vscode;

/**
 * Represents a cell of a {@link NotebookDocument notebook}, either a {@link NotebookCellKind.Code code}-cell
 * or {@link NotebookCellKind.Markup markup}-cell.
 *
 * NotebookCell instances are immutable and are kept in sync for as long as they are part of their notebook.
 */
typedef NotebookCell = {
	/**
	 * The index of this cell in its {@link NotebookDocument.cellAt containing notebook}. The
	 * index is updated when a cell is moved within its notebook. The index is `-1`
	 * when the cell has been removed from its notebook.
	 */
	final index:Int;

	/**
	 * The {@link NotebookDocument notebook} that contains this cell.
	 */
	final notebook:NotebookDocument;

	/**
	 * The kind of this cell.
	 */
	final kind:NotebookCellKind;

	/**
	 * The {@link TextDocument text} of this cell, represented as text document.
	 */
	final document:TextDocument;

	/**
	 * The metadata of this cell. Can be anything but must be JSON-stringifyable.
	 */
	final metadata:DynamicAccess<Any>;

	/**
	 * The outputs of this cell.
	 */
	final outputs:ReadOnlyArray<NotebookCellOutput>;

	/**
	 * The most recent {@link NotebookCellExecutionSummary execution summary} for this cell.
	 */
	final ?executionSummary:NotebookCellExecutionSummary;
}
