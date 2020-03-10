package vscode;

/**
 * An event that is fired after files are deleted.
 */
typedef FileDeleteEvent = {
	/**
	 * The files that got deleted.
	 */
	var files(default, never):ReadOnlyArray<Uri>;
}
