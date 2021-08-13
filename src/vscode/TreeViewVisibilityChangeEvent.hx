package vscode;

/**
 * The event that is fired when there is a change in {@link TreeView.visible tree view's visibility}
 */
typedef TreeViewVisibilityChangeEvent = {
	/**
	 * `true` if the {@link TreeView tree view} is visible otherwise `false`.
	 */
	var visible(default, null):Bool;
}
