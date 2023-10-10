package vscode;

typedef QuickPickItemButtonEvent<T:QuickPickItem> = {
	/**
	 * The button that was clicked.
	 */
	var button(default, never):QuickInputButton;

	/**
	 * The item that the button belongs to.
	 */
	var item(default, never):T;
}
