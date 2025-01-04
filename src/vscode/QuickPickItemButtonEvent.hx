package vscode;

/**
 * An event signaling when a button in a particular {@link QuickPickItem} was triggered.
 * This event does not fire for buttons in the title bar.
 */
typedef QuickPickItemButtonEvent<T:QuickPickItem> = {
	/**
	 * The button that was clicked.
	 */
	var button(default, null):QuickInputButton;

	/**
	 * The item that the button belongs to.
	 */
	var item:T;
}
