package vscode;

/**
 * The event that is fired when there is a change in {@link TreeView.selection tree view's selection}
 */
typedef TreeViewSelectionChangeEvent<T> = {
	/**
	 * Selected elements.
	 */
	var selection(default, null):Array<T>;
}
