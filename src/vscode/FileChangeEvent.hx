package vscode;

/**
 * The event filesystem providers must use to signal a file change.
 */
typedef FileChangeEvent = {
	/**
	 * The type of change.
	 */
	var type:FileChangeType;

	/**
	 * The uri of the file that has changed.
	 */
	var uri:Uri;
}
