package vscode;

/**
 * Options for creating a [TreeView](#TreeView)
 */
typedef TreeViewOptions<T> = {
	/**
	 * A data provider that provides tree data.
	 */
	var treeDataProvider:TreeDataProvider<T>;

	/**
	 * Whether to show collapse all action or not.
	 */
	@:optional var showCollapseAll:Bool;
}
