package vscode;

/**
 * Button for an action in a [QuickPick](#QuickPick) or [InputBox](#InputBox).
 */
typedef QuickInputButton = {
	/**
	 * Icon for the button.
	 */
	var iconPath(default, null):EitherType<Uri, EitherType<{light:Uri, dark:Uri}, ThemeIcon>>;

	/**
	 * An optional tooltip.
	 */
	@:optional var tooltip(default, null):String;
}
