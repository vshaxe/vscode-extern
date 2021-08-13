package vscode;

/**
 * Collection of test items, found in {@link TestItem.children} and
 * {@link TestController.items}.
 */
typedef TestItemCollection = {
	/**
	 * Gets the number of items in the collection.
	 */
	var size(default, null):Int;

	/**
	 * Replaces the items stored by the collection.
	 * @param items Items to store.
	 */
	function replace(items:ReadOnlyArray<TestItem>):Void;

	/**
	 * Iterate over each entry in this collection.
	 *
	 * @param callback Function to execute for each entry.
	 * @param thisArg The `this` context used when invoking the handler function.
	 */
	function forEach(callback:(item:TestItem, collection:TestItemCollection) -> Any, ?thisArg:Any):Void;

	/**
	 * Adds the test item to the children. If an item with the same ID already
	 * exists, it'll be replaced.
	 * @param items Item to add.
	 */
	function add(item:TestItem):Void;

	/**
	 * Removes a single test item from the collection.
	 * @param itemId Item ID to delete.
	 */
	function delete(itemId:String):Void;

	/**
	 * Efficiently gets a test item by ID, if it exists, in the children.
	 * @param itemId Item ID to get.
	 * @returns The found item or undefined if it does not exist.
	 */
	function get(itemId:String):Null<TestItem>;
}
