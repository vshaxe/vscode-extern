package vscode;

/**
 * Represents the state of a window.
 */
typedef WindowState = {
	/**
	 * Whether the current window is focused.
	 */
	var focused(default, null):Bool;

	/**
	 * Whether the window has been interacted with recently. This will change
	 * immediately on activity, or after a short time of user inactivity.
	 */
	var active(default, null):Bool;
}
