package vscode;

import haxe.extern.EitherType;

@:jsRequire("vscode", "TreeItem")
extern class TreeItem {
    /**
     * A human-readable string describing this item
     */
    var label:String;

    /**
     * The icon path for the tree item
     */
    var iconPath:Null<EitherType<String, EitherType<Uri, {light:EitherType<String, Uri>, dark:EitherType<String, Uri>}>>>;

    /**
     * The [command](#Command) which should be run when the tree item is selected.
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
     * @param collapsibleState [TreeItemCollapsibleState](#TreeItemCollapsibleState) of the tree item. Default is [TreeItemCollapsibleState.None](#TreeItemCollapsibleState.None)
     */
    function new(label:String, ?collapsibleState:TreeItemCollapsibleState);
}