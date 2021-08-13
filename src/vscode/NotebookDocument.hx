package vscode;

/**
 * Represents a notebook which itself is a sequence of {@link NotebookCell code or markup cells}. Notebook documents are
 * created from {@link NotebookData notebook data}.
 */
typedef NotebookDocument = {
	/**
	 * The associated uri for this notebook.
	 *
	 * *Note* that most notebooks use the `file`-scheme, which means they are files on disk. However, **not** all notebooks are
	 * saved on disk and therefore the `scheme` must be checked before trying to access the underlying file or siblings on disk.
	 *
	 * @see {@link FileSystemProvider}
	 */
	var uri(default, null):Uri;

	/**
	 * The type of notebook.
	 */
	var notebookType(default, null):String;

	/**
	 * The version number of this notebook (it will strictly increase after each
	 * change, including undo/redo).
	 */
	var version(default, null):Int;

	/**
	 * `true` if there are unpersisted changes.
	 */
	var isDirty(default, null):Bool;

	/**
	 * Is this notebook representing an untitled file which has not been saved yet.
	 */
	var isUntitled(default, null):Bool;

	/**
	 * `true` if the notebook has been closed. A closed notebook isn't synchronized anymore
	 * and won't be re-used when the same resource is opened again.
	 */
	var isClosed(default, null):Bool;

	/**
	 * Arbitrary metadata for this notebook. Can be anything but must be JSON-stringifyable.
	 */
	var metadata(default, null):DynamicAccess<Any>;

	/**
	 * The number of cells in the notebook.
	 */
	var cellCount(default, null):Int;

	/**
	 * Return the cell at the specified index. The index will be adjusted to the notebook.
	 *
	 * @param index - The index of the cell to retrieve.
	 * @return A {@link NotebookCell cell}.
	 */
	function cellAt(index:Int):NotebookCell;

	/**
	 * Get the cells of this notebook. A subset can be retrieved by providing
	 * a range. The range will be adjusted to the notebook.
	 *
	 * @param range A notebook range.
	 * @returns The cells contained by the range or all cells.
	 */
	function getCells(?range:NotebookRange):Array<NotebookCell>;

	/**
	 * Save the document. The saving will be handled by the corresponding {@link NotebookSerializer serializer}.
	 *
	 * @return A promise that will resolve to true when the document
	 * has been saved. Will return false if the file was not dirty or when save failed.
	 */
	function save():Thenable<Bool>;
}
