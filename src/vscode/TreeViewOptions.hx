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
