package vscode;

/**
 * Checkbox state of the tree item
 */
@:jsRequire("vscode", "TreeItemCheckboxState")
extern enum abstract TreeItemCheckboxState(Int) {
	/**
	 * Determines an item is unchecked
	 */
	var Unchecked;

	/**
	 * Determines an item is checked
	 */
	var Checked;
}
