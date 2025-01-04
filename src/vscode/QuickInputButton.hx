package vscode;

/**
 * Button for an action in a {@link QuickPick} or {@link InputBox}.
 */
typedef QuickInputButton = {
	/**
	 * Icon for the button.
	 */
	var iconPath(default, null):IconPath;

	/**
	 * An optional tooltip.
	 */
	var ?tooltip(default, null):String;
}
