package vscode;

/**
 * A notebook cell kind.
 */
@:jsRequire("vscode", "NotebookCellKind")
extern enum abstract NotebookCellKind(Int) {
	/**
	 * A markup-cell is formatted source that is used for display.
	 */
	final Markup;

	/**
	 * A code-cell is source that can be {@link NotebookController executed} and that
	 * produces {@link NotebookCellOutput output}.
	 */
	final Code;
}
