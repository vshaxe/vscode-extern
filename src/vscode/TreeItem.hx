package vscode;

@:jsRequire("vscode", "TreeItem")
extern class TreeItem {
	/**
	 * A human-readable string describing this item. When `falsy`, it is derived from [resourceUri](#TreeItem.resourceUri).
	 */
	var label:Null<String>;

	/**
	 * Optional id for the tree item that has to be unique across tree. The id is used to preserve the selection and expansion state of the tree item.
	 *
	 * If not provided, an id is generated using the tree item's label. **Note** that when labels change, ids will change and that selection and expansion state cannot be kept stable anymore.
	 */
	var id:Null<String>;

	/**
	 * The icon path or [ThemeIcon](#ThemeIcon) for the tree item.
	 * When `falsy`, [Folder Theme Icon](#ThemeIcon.Folder) is assigned, if item is collapsible otherwise [File Theme Icon](#ThemeIcon.File).
	 * When a [ThemeIcon](#ThemeIcon) is specified, icon is derived from the current file icon theme for the specified theme icon using [resourceUri](#TreeItem.resourceUri) (if provided).
	 */
	var iconPath:Null<EitherType<String, EitherType<Uri, EitherType<{light:EitherType<String, Uri>, dark:EitherType<String, Uri>}, ThemeIcon>>>>;

	/**
	 * The [uri](#Uri) of the resource representing this item.
	 *
	 * Will be used to derive the [label](#TreeItem.label), when it is not provided.
	 * Will be used to derive the icon from current icon theme, when [iconPath](#TreeItem.iconPath) has [ThemeIcon](#ThemeIcon) value.
	 */
	var resourceUri:Null<Uri>;

	/**
	 * The tooltip text when you hover over this item.
	 */
	var tooltip:Null<String>;

	/**
	 * The [command](#Command) that should be executed when the tree item is selected.
	 */
	var command:Null<Command>;

	/**
	 * [TreeItemCollapsibleState](#TreeItemCollapsibleState) of the tree item.
	 */
	var collapsibleState:Null<TreeItemCollapsibleState>;

	/**
	 * Context value of the tree item. This can be used to contribute item specific actions in the tree.
	 * For example, a tree item is given a context value as `folder`. When contributing actions to `view/item/context`
	 * using `menus` extension point, you can specify context value for key `viewItem` in `when` expression like `viewItem == folder`.
	 * ```
	 *	"contributes": {
	 *		"menus": {
	 *			"view/item/context": [
	 *				{
	 *					"command": "extension.deleteFolder",
	 *					"when": "viewItem == folder"
	 *				}
	 *			]
	 *		}
	 *	}
	 * ```
	 * This will show action `extension.deleteFolder` only for items with `contextValue` is `folder`.
	 */
	var contextValue:Null<String>;

	/**
	 * @param label A human-readable string describing this item
	 * @param resourceUri The [uri](#Uri) of the resource representing this item.
	 * @param collapsibleState [TreeItemCollapsibleState](#TreeItemCollapsibleState) of the tree item. Default is [TreeItemCollapsibleState.None](#TreeItemCollapsibleState.None)
	 */
	@:overload(function(resourceUri:Uri, ?collapsibleState:TreeItemCollapsibleState):Void {})
	function new(label:String, ?collapsibleState:TreeItemCollapsibleState);
}
