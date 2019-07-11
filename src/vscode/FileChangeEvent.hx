package vscode;

/**
 * The event filesystem providers must use to signal a file change.
 */
typedef FileChangeEvent = {
	/**
	 * The type of change.
	 */
	var type(default, null):FileChangeType;

	/**
	 * The uri of the file that has changed.
	 */
	var uri(default, null):Uri;
}
