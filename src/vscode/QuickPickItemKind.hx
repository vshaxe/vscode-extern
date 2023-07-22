package vscode;

/**
 * The kind of {@link QuickPickItem quick pick item}.
 */
@:jsRequire("vscode", "QuickPickItemKind")
extern enum abstract QuickPickItemKind(Int) {
	/**
	 * When a {@link QuickPickItem} has a kind of {@link Separator}, the item is just a visual separator and does not represent a real item.
	 * The only property that applies is {@link QuickPickItem.label label }. All other properties on {@link QuickPickItem} will be ignored and have no effect.
	 */
	var Separator = -1;

	/**
	 * The default {@link QuickPickItem.kind} is an item that can be selected in the quick pick.
	 */
	var Default = 0;
}
