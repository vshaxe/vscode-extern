package vscode;

/**
 * A concrete [QuickInput](#QuickInput) to let the user pick an item from a
 * list of items of type T. The items can be filtered through a filter text field and
 * there is an option [canSelectMany](#QuickPick.canSelectMany) to allow for
 * selecting multiple items.
 *
 * Note that in many cases the more convenient [window.showQuickPick](#window.showQuickPick)
 * is easier to use. [window.createQuickPick](#window.createQuickPick) should be used
 * when [window.showQuickPick](#window.showQuickPick) does not offer the required flexibility.
 */
typedef QuickPick<T:QuickPickItem> = {
	> QuickInput,

	/**
	 * Current value of the filter text.
	 */
	var value:String;

	/**
	 * Optional placeholder in the filter text.
	 */
	@:optional var placeholder:String;

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
	var buttons:ReadonlyArray<QuickInputButton>;

	/**
	 * An event signaling when a button was triggered.
	 */
	var onDidTriggerButton(default, null):Event<QuickInputButton>;

	/**
	 * Items to pick from.
	 */
	var items:ReadonlyArray<T>;

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
	var activeItems:ReadonlyArray<T>;

	/**
	 * An event signaling when the active items have changed.
	 */
	var onDidChangeActive(default, null):Event<Array<T>>;

	/**
	 * Selected items. This can be read and updated by the extension.
	 */
	var selectedItems:ReadonlyArray<T>;

	/**
	 * An event signaling when the selected items have changed.
	 */
	var onDidChangeSelection(default, null):Event<Array<T>>;
}
