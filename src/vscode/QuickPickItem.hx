package vscode;

/**
 * Represents an item that can be selected from
 * a list of items.
 */
typedef QuickPickItem = {
	/**
	 * A human-readable string which is rendered prominent. Supports rendering of {@link ThemeIcon theme icons} via
	 * the `$(<name>)`-syntax.
	 */
	var label:String;

	/**
	 * A human-readable string which is rendered less prominent in the same line. Supports rendering of
	 * {@link ThemeIcon theme icons} via the `$(<name>)`-syntax.
	 */
	var ?description:String;

	/**
	 * The kind of QuickPickItem that will determine how this item is rendered in the quick pick. When not specified,
	 * the default is {@link QuickPickItemKind.Default}.
	 */
	var ?kind:QuickPickItemKind;

	/**
	 * The icon path or {@link ThemeIcon} for the QuickPickItem.
	 */
	var ?iconPath:EitherType<Uri, EitherType<{light:Uri, dark:Uri}, ThemeIcon>>;

	/**
	 * A human-readable string which is rendered less prominent in a separate line. Supports rendering of
	 * {@link ThemeIcon theme icons} via the `$(<name>)`-syntax.
	 */
	var ?detail:String;

	/**
	 * Optional flag indicating if this item is picked initially.
	 * (Only honored when the picker allows multiple selections.)
	 *
	 * @see {@link QuickPickOptions.canPickMany}
	 */
	var ?picked:Bool;

	/**
	 * Always show this item.
	 */
	var ?alwaysShow:Bool;

	/**
	 * Optional buttons that will be rendered on this particular item. These buttons will trigger
	 * an {@link QuickPickItemButtonEvent} when clicked. Buttons are only rendered when using a quickpick
	 * created by the {@link window.createQuickPick()} API. Buttons are not rendered when using
	 * the {@link window.showQuickPick()} API.
	 */
	var ?buttons:ReadOnlyArray<QuickInputButton>;
}
