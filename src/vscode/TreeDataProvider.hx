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
	@:optional var onDidChangeTreeData:Event<Null<T>>;

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
	@:optional var getParent(default, never):T->ProviderResult<T>;
}
