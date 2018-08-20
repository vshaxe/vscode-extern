package vscode;

/**
 * Represents a Tree view
 */
typedef TreeView<T> = {
	/**
	 * Dispose this object.
	 */
	function dispose():Void;

	/**
	 * Event that is fired when an element is expanded
	 */
	var onDidExpandElement(default, null):Event<TreeViewExpansionEvent<T>>;

	/**
	 * Event that is fired when an element is collapsed
	 */
	var onDidCollapseElement(default, null):Event<TreeViewExpansionEvent<T>>;

	/**
	 * Currently selected elements.
	 */
	var selection(default, null):Array<T>;

	/**
	 * Event that is fired when the [selection](#TreeView.selection) has changed
	 */
	var onDidChangeSelection(default, null):Event<TreeViewSelectionChangeEvent<T>>;

	/**
	 * `true` if the [tree view](#TreeView) is visible otherwise `false`.
	 */
	var visible(default, null):Bool;

	/**
	 * Event that is fired when [visibility](TreeView.visible) has changed
	 */
	var onDidChangeVisibility(default, null):Event<TreeViewVisibilityChangeEvent>;

	/**
	 * Reveals the given element in the tree view.
	 * If the tree view is not visible then the tree view is shown and element is revealed.
	 *
	 * By default revealed element is selected and not focused.
	 * In order to not to select, set the option `select` to `false`.
	 * In order to focus, set the option `focus` to `true`.
	 *
	 * **NOTE:** [TreeDataProvider](#TreeDataProvider) is required to implement [getParent](#TreeDataProvider.getParent) method to access this API.
	 */
	function reveal(element:T, ?options:{?select:Bool, ?focus:Bool}):Thenable<Void>;
}
