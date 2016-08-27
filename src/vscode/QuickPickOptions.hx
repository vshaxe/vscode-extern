package vscode;

import haxe.extern.EitherType;

/**
 * Options to configure the behavior of the quick pick UI.
 */
typedef QuickPickOptions = {
	/**
	 * An optional flag to include the description when filtering the picks.
	 */
	@:optional var matchOnDescription:Bool;

	/**
	 * An optional flag to include the detail when filtering the picks.
	 */
	@:optional var matchOnDetail:Bool;

	/**
	 * An optional string to show as place holder in the input box to guide the user what to pick on.
	 */
	@:optional var placeHolder:String;

	/**
	 * An optional function that is invoked whenever an item is selected.
	 */
	@:optional var onDidSelectItem:EitherType<QuickPickItem,String>->Any;
}
