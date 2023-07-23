package vscode;

/**
 * An event describing the change in a tree item's checkbox state.
 */
typedef TreeCheckboxChangeEvent<T> = {
	/**
	 * The items that were checked or unchecked.
	 */
	var items(default, null):ReadOnlyArray<Map<T, TreeItemCheckboxState>>;
}
