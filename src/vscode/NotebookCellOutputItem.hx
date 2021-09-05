package vscode;

import js.lib.Uint8Array;

/**
 * One representation of a {@link NotebookCellOutput notebook output}, defined by MIME type and data.
 */
@:jsRequire("vscode", "NotebookCellOutputItem")
extern class NotebookCellOutputItem {
	/**
	 * Factory function to create a `NotebookCellOutputItem` from a string.
	 *
	 * *Note* that an UTF-8 encoder is used to create bytes for the string.
	 *
	 * @param value A string.
	 * @param mime Optional MIME type, defaults to `text/plain`.
	 * @returns A new output item object.
	 */
	static function text(value:String, ?mime:String):NotebookCellOutputItem;

	/**
	 * Factory function to create a `NotebookCellOutputItem` from
	 * a JSON object.
	 *
	 * *Note* that this function is not expecting "stringified JSON" but
	 * an object that can be stringified. This function will throw an error
	 * when the passed value cannot be JSON-stringified.
	 *
	 * @param value A JSON-stringifyable value.
	 * @param mime Optional MIME type, defaults to `application/json`
	 * @returns A new output item object.
	 */
	static function json(value:Any, ?mime:String):NotebookCellOutputItem;

	/**
	 * Factory function to create a `NotebookCellOutputItem` that uses
	 * uses the `application/vnd.code.notebook.stdout` mime type.
	 *
	 * @param value A string.
	 * @returns A new output item object.
	 */
	static function stdout(value:String):NotebookCellOutputItem;

	/**
	 * Factory function to create a `NotebookCellOutputItem` that uses
	 * uses the `application/vnd.code.notebook.stderr` mime type.
	 *
	 * @param value A string.
	 * @returns A new output item object.
	 */
	static function stderr(value:String):NotebookCellOutputItem;

	/**
	 * Factory function to create a `NotebookCellOutputItem` that uses
	 * uses the `application/vnd.code.notebook.error` mime type.
	 *
	 * @param value An error object.
	 * @returns A new output item object.
	 */
	static function error(value:Error):NotebookCellOutputItem;

	/**
	 * The mime type which determines how the {@linkcode NotebookCellOutputItem.data data}-property
	 * is interpreted.
	 *
	 * Notebooks have built-in support for certain mime-types, extensions can add support for new
	 * types and override existing types.
	 */
	var mime:String;

	/**
	 * The data of this output item. Must always be an array of unsigned 8-bit integers.
	 */
	var data:Uint8Array;

	/**
	 * Create a new notebook cell output item.
	 *
	 * @param data The value of the output item.
	 * @param mime The mime type of the output item.
	 */
	function new(data:Uint8Array, mime:String);
}
