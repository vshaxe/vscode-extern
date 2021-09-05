package vscode;

/**
 * A concrete {@link QuickInput} to let the user pick an item from a
 * list of items of type T. The items can be filtered through a filter text field and
 * there is an option {@link QuickPick.canSelectMany canSelectMany} to allow for
 * selecting multiple items.
 *
 * Note that in many cases the more convenient {@link window.showQuickPick}
 * is easier to use. {@link window.createQuickPick} should be used
 * when {@link window.showQuickPick} does not offer the required flexibility.
 */
typedef QuickPick<T:QuickPickItem> = QuickInput & {
	/**
	 * Current value of the filter text.
	 */
	var value:String;

	/**
	 * Optional placeholder in the filter text.
	 */
	var ?placeholder:String;

	/**
	 * An event signaling when the value of the filter text has changed.
	 */
	var onDidChangeValue(default, null):Event<String>;

	/**
	 * An event signaling when the user indicated acceptance of the selected item(s).
	 */
	var onDidAccept(default, null):Event<Void>;

	/**
	 * Buttons for actions in the UI.
	 */
	var buttons:ReadOnlyArray<QuickInputButton>;

	/**
	 * An event signaling when a button in the title bar was triggered.
	 * This event does not fire for buttons on a {@link QuickPickItem}.
	 */
	var onDidTriggerButton(default, null):Event<QuickInputButton>;

	/**
	 * Items to pick from. This can be read and updated by the extension.
	 */
	var items:ReadOnlyArray<T>;

	/**
	 * If multiple items can be selected at the same time. Defaults to false.
	 */
	var canSelectMany:Bool;

	/**
	 * If the filter text should also be matched against the description of the items. Defaults to false.
	 */
	var matchOnDescription:Bool;

	/**
	 * If the filter text should also be matched against the detail of the items. Defaults to false.
	 */
	var matchOnDetail:Bool;

	/**
	 * Active items. This can be read and updated by the extension.
	 */
	var activeItems:ReadOnlyArray<T>;

	/**
	 * An event signaling when the active items have changed.
	 */
	var onDidChangeActive(default, null):Event<ReadOnlyArray<T>>;

	/**
	 * Selected items. This can be read and updated by the extension.
	 */
	var selectedItems:ReadOnlyArray<T>;

	/**
	 * An event signaling when the selected items have changed.
	 */
	var onDidChangeSelection(default, null):Event<ReadOnlyArray<T>>;
}
