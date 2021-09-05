package vscode;

/**
 * Raw representation of a notebook.
 *
 * Extensions are responsible for creating {@linkcode NotebookData} so that the editor
 * can create a {@linkcode NotebookDocument}.
 *
 * @see {@link NotebookSerializer}
 */
@:jsRequire("vscode", "NotebookData")
extern class NotebookData {
	/**
	 * The cell data of this notebook data.
	 */
	var cells:Array<NotebookCellData>;

	/**
	 * Arbitrary metadata of notebook data.
	 */
	var metadata:Null<DynamicAccess<Any>>;

	/**
	 * Create new notebook data.
	 *
	 * @param cells An array of cell data.
	 */
	function new(cells:Array<NotebookCellData>);
}
