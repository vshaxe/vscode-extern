package vscode;

/**
 * Options to configure the behavior of the quick pick UI.
 */
typedef QuickPickOptions = {
	/**
	 * An optional flag to include the description when filtering the picks.
	 */
	var ?matchOnDescription:Bool;

	/**
	 * An optional flag to include the detail when filtering the picks.
	 */
	var ?matchOnDetail:Bool;

	/**
	 * An optional string to show as place holder in the input box to guide the user what to pick on.
	 */
	var ?placeHolder:String;

	/**
	 * Set to `true` to keep the picker open when focus moves to another part of the editor or to another window.
	 */
	var ?ignoreFocusOut:Bool;

	/**
	 * An optional flag to make the picker accept multiple selections, if true the result is an array of picks.
	 */
	var ?canPickMany:Bool;

	/**
	 * An optional function that is invoked whenever an item is selected.
	 */
	var ?onDidSelectItem:EitherType<QuickPickItem, String>->Any;
}
