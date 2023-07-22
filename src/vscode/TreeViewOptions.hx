package vscode;

/**
 * Options for creating a {@link TreeView}
 */
typedef TreeViewOptions<T> = {
	/**
	 * A data provider that provides tree data.
	 */
	var treeDataProvider:TreeDataProvider<T>;

	/**
	 * Whether to show collapse all action or not.
	 */
	var ?showCollapseAll:Bool;

	/**
	 * Whether the tree supports multi-select. When the tree supports multi-select and a command is executed from the tree,
	 * the first argument to the command is the tree item that the command was executed on and the second argument is an
	 * array containing all selected tree items.
	 */
	var ?canSelectMany:Bool;

	/**
	 * An optional interface to implement drag and drop in the tree view.
	 */
	var ?dragAndDropController:TreeDragAndDropController<T>;
}

/**
 * A class for encapsulating data transferred during a drag and drop event.
 *
 * You can use the `value` of the `DataTransferItem` to get back the object you put into it
 * so long as the extension that created the `DataTransferItem` runs in the same extension host.
 */
@:jsRequire("vscode", "DataTransferItem")
extern class DataTransferItem {
	function asString():Thenable<String>;
	var value:Any;
	function new(value:Any);
}

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
	 * @param callbackfn Callback for iteration through the data transfer items.
	 */
	function forEach(callbackfn:DataTransferItem->String->Void):Void;
}

/**
 * Provides support for drag and drop in `TreeView`.
 */
typedef TreeDragAndDropController<T> = {
	/**
	 * The mime types that the {@link TreeDragAndDropController.handleDrop `handleDrop`} method of this `DragAndDropController` supports.
	 * This could be well-defined, existing, mime types, and also mime types defined by the extension.
	 *
	 * To support drops from trees, you will need to add the mime type of that tree.
	 * This includes drops from within the same tree.
	 * The mime type of a tree is recommended to be of the format `application/vnd.code.tree.<treeidlowercase>`.
	 *
	 * To learn the mime type of a dragged item:
	 * 1. Set up your `DragAndDropController`
	 * 2. Use the Developer: Set Log Level... command to set the level to "Debug"
	 * 3. Open the developer tools and drag the item with unknown mime type over your tree. The mime types will be logged to the developer console
	 *
	 * Note that mime types that cannot be sent to the extension will be omitted.
	 */
	var dropMimeTypes(default, never):Array<String>;

	/**
	 * The mime types that the {@link TreeDragAndDropController.handleDrag `handleDrag`} method of this `TreeDragAndDropController` may add to the tree data transfer.
	 * This could be well-defined, existing, mime types, and also mime types defined by the extension.
	 *
	 * The recommended mime type of the tree (`application/vnd.code.tree.<treeidlowercase>`) will be automatically added.
	 */
	var dragMimeTypes:Array<String>;

	/**
	 * When the user starts dragging items from this `DragAndDropController`, `handleDrag` will be called.
	 * Extensions can use `handleDrag` to add their {@link DataTransferItem `DataTransferItem`} items to the drag and drop.
	 *
	 * When the items are dropped on **another tree item** in **the same tree**, your `DataTransferItem` objects
	 * will be preserved. Use the recommended mime type for the tree (`application/vnd.code.tree.<treeidlowercase>`) to add
	 * tree objects in a data transfer. See the documentation for `DataTransferItem` for how best to take advantage of this.
	 *
	 * To add a data transfer item that can be dragged into the editor, use the application specific mime type "text/uri-list".
	 * The data for "text/uri-list" should be a string with `toString()`ed Uris separated by newlines. To specify a cursor position in the file,
	 * set the Uri's fragment to `L3,5`, where 3 is the line number and 5 is the column number.
	 *
	 * @param source The source items for the drag and drop operation.
	 * @param dataTransfer The data transfer associated with this drag.
	 * @param token A cancellation token indicating that drag has been cancelled.
	 */
	function handleDrag(source:Array<T>, dataTransfer:DataTransfer, token:CancellationToken):EitherType<Thenable<Void>, Void>;

	/**
	 * Called when a drag and drop action results in a drop on the tree that this `DragAndDropController` belongs to.
	 *
	 * Extensions should fire {@link TreeDataProvider.onDidChangeTreeData onDidChangeTreeData} for any elements that need to be refreshed.
	 *
	 * @param dataTransfer The data transfer items of the source of the drag.
	 * @param target The target tree element that the drop is occurring on. When undefined, the target is the root.
	 * @param token A cancellation token indicating that the drop has been cancelled.
	 */
	function handleDrop(target:Null<T>, dataTransfer:DataTransfer, token:CancellationToken):EitherType<Thenable<Void>, Void>;
}
