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
	 * Event that is fired when the {@link TreeView.selection selection} has changed
	 */
	var onDidChangeSelection(default, null):Event<TreeViewSelectionChangeEvent<T>>;

	/**
	 * `true` if the {@link TreeView tree view} is visible otherwise `false`.
	 */
	var visible(default, null):Bool;

	/**
	 * Event that is fired when {@link TreeView.visible visibility} has changed
	 */
	var onDidChangeVisibility(default, null):Event<TreeViewVisibilityChangeEvent>;

	/**
	 * An optional human-readable message that will be rendered in the view.
	 * Setting the message to null, undefined, or empty string will remove the message from the view.
	 */
	var ?message:String;

	/**
	 * The tree view title is initially taken from the extension package.json
	 * Changes to the title property will be properly reflected in the UI in the title of the view.
	 */
	var ?title:String;

	/**
	 * An optional human-readable description which is rendered less prominently in the title of the view.
	 * Setting the title description to null, undefined, or empty string will remove the description from the view.
	 */
	var ?description:String;

	/**
	 * Reveals the given element in the tree view.
	 * If the tree view is not visible then the tree view is shown and element is revealed.
	 *
	 * By default revealed element is selected.
	 * In order to not to select, set the option `select` to `false`.
	 * In order to focus, set the option `focus` to `true`.
	 * In order to expand the revealed element, set the option `expand` to `true`. To expand recursively set `expand` to the number of levels to expand.
	 * **NOTE:** You can expand only to 3 levels maximum.
	 *
	 * **NOTE:** The {@link TreeDataProvider} that the `TreeView` {@link window.createTreeView is registered with} with must implement {@link TreeDataProvider.getParent getParent} method to access this API.
	 */
	function reveal(element:T, ?options:{?select:Bool, ?focus:Bool, ?exapnd:EitherType<Bool, Int>}):Thenable<Void>;
}
