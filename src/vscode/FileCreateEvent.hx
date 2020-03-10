package vscode;

/**
 * An event that is fired after files are created.
 */
typedef FileCreateEvent = {
	/**
	 * The files that got created.
	 */
	var files(default, never):ReadOnlyArray<Uri>;
}
