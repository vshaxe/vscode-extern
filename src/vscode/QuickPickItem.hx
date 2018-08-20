package vscode;

/**
 * Represents an item that can be selected from
 * a list of items.
 */
typedef QuickPickItem = {
	/**
	 * A human readable string which is rendered prominent.
	 */
	var label:String;

	/**
	 * A human readable string which is rendered less prominent.
	 */
	@:optional var description:String;

	/**
	 * A human readable string which is rendered less prominent.
	 */
	@:optional var detail:String;

	/**
	 * Optional flag indicating if this item is picked initially.
	 * (Only honored when the picker allows multiple selections.)
	 *
	 * @see [QuickPickOptions.canPickMany](#QuickPickOptions.canPickMany)
	 */
	@:optional var picked:Bool;
}
