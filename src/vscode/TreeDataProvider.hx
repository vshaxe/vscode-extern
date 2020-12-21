package vscode;

/**
 * A data provider that provides tree data
 */
typedef TreeDataProvider<T> = {
	/**
	 * An optional event to signal that an element or root has changed.
	 * This will trigger the view to update the changed element/root and its children recursively (if shown).
	 * To signal that root has changed, do not pass any argument or pass `undefined` or `null`.
	 */
	var ?onDidChangeTreeData:Event<Null<T> /* | Void */>;

	/**
	 * Get [TreeItem](#TreeItem) representation of the `element`
	 *
	 * @param element The element for which [TreeItem](#TreeItem) representation is asked for.
	 * @return [TreeItem](#TreeItem) representation of the element
	 */
	function getTreeItem(element:T):EitherType<TreeItem, Thenable<TreeItem>>;

	/**
	 * Get the children of `element` or root if no element is passed.
	 *
	 * @param element The element from which the provider gets children. Can be `undefined`.
	 * @return Children of `element` or root if no element is passed.
	 */
	function getChildren(?element:T):ProviderResult<Array<T>>;

	/**
	 * Optional method to return the parent of `element`.
	 * Return `null` or `undefined` if `element` is a child of root.
	 *
	 * **NOTE:** This method should be implemented in order to access [reveal](#TreeView.reveal) API.
	 *
	 * @param element The element for which the parent has to be returned.
	 * @return Parent of `element`.
	 */
	var ?getParent(default, never):(element:T) -> ProviderResult<T>;

	/**
	 * Called only on hover to resolve the [TreeItem](#TreeItem.tooltip) property if it is undefined.
	 * Only properties that were undefined can be resolved in `resolveTreeItem`.
	 * Functionality may be expanded later to include being called to resolve other missing
	 * properties on selection and/or on open.
	 *
	 * Will only ever be called once per TreeItem.
	 *
	 * onDidChangeTreeData should not be triggered from within resolveTreeItem.
	 *
	 * *Note* that this function is called when tree items are already showing in the UI.
	 * Because of that, no property that changes the presentation (label, description, command, etc.)
	 * can be changed.
	 *
	 * @param element The object associated with the TreeItem
	 * @param item Undefined properties of `item` should be set then `item` should be returned.
	 * @return The resolved tree item or a thenable that resolves to such. It is OK to return the given
	 * `item`. When no result is returned, the given `item` will be used.
	 */
	var ?resolveTreeItem(default, never):(item:TreeItem, element:T) -> ProviderResult<TreeItem>;
}
