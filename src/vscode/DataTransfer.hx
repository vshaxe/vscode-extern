package vscode;

/**
 * A map containing a mapping of the mime type of the corresponding transferred data.
 *
 * Drag and drop controllers that implement {@link TreeDragAndDropController.handleDrag `handleDrag`} can add additional mime types to the
 * data transfer. These additional mime types will only be included in the `handleDrop` when the the drag was initiated from
 * an element in the same drag and drop controller.
 */
@:jsRequire("vscode", "DataTransfer")
extern class DataTransfer {
	/**
	 * Retrieves the data transfer item for a given mime type.
	 *
	 * @param mimeType The mime type to get the data transfer item for, such as `text/plain` or `image/png`.
	 *
	 * Special mime types:
	 * - `text/uri-list` — A string with `toString()`ed Uris separated by newlines. To specify a cursor position in the file,
	 * set the Uri's fragment to `L3,5`, where 3 is the line number and 5 is the column number.
	 */
	function get(mimeType:String):DataTransferItem;

	/**
	 * Sets a mime type to data transfer item mapping.
	 * @param mimeType The mime type to set the data for.
	 * @param value The data transfer item for the given mime type.
	 */
	function set(mimeType:String, value:DataTransferItem):Void;

	/**
	 * Allows iteration through the data transfer items.
	 *
	 * @param callbackfn Callback for iteration through the data transfer items.
	 * @param thisArg The `this` context used when invoking the handler function.
	 */
	function forEach(callbackfn:Function, ?thisArg:Any):Void;
}
