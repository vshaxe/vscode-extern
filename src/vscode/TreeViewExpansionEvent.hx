package vscode;

/**
 * The event that is fired when an element in the {@link TreeView} is expanded or collapsed
 */
typedef TreeViewExpansionEvent<T> = {
	/**
	 * Element that is expanded or collapsed.
	 */
	var element(default, null):T;
}
