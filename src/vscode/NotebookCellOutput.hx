package vscode;

/**
 * Notebook cell output represents a result of executing a cell. It is a container type for multiple
 * {@link NotebookCellOutputItem output items} where contained items represent the same result but
 * use different MIME types.
 */
@:jsRequire("vscode", "NotebookCellOutput")
extern class NotebookCellOutput {
	/**
	 * The output items of this output. Each item must represent the same result. _Note_ that repeated
	 * MIME types per output is invalid and that the editor will just pick one of them.
	 *
	 * ```ts
	 * new vscode.NotebookCellOutput([
	 * 	vscode.NotebookCellOutputItem.text('Hello', 'text/plain'),
	 * 	vscode.NotebookCellOutputItem.text('<i>Hello</i>', 'text/html'),
	 * 	vscode.NotebookCellOutputItem.text('_Hello_', 'text/markdown'),
	 * 	vscode.NotebookCellOutputItem.text('Hey', 'text/plain'), // INVALID: repeated type, editor will pick just one
	 * ])
	 * ```
	 */
	var items:Array<NotebookCellOutputItem>;

	/**
	 * Arbitrary metadata for this cell output. Can be anything but must be JSON-stringifyable.
	 */
	var metadata:Null<DynamicAccess<Any>>;

	/**
	 * Create new notebook output.
	 *
	 * @param items Notebook output items.
	 * @param metadata Optional metadata.
	 */
	function new(items:Array<NotebookCellOutputItem>, ?metadata:DynamicAccess<Any>);
}
