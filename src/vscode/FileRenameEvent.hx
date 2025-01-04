package vscode;

/**
 * An event that is fired after files are renamed.
 */
typedef FileRenameEvent = {
	/**
	 * The files that got renamed.
	 */
	var files(default, never):ReadOnlyArray<{
		/**
		 * The old uri of a file.
		 */
		final oldUri:Uri;
		/**
		 * The new uri of a file.
		 */
		final newUri:Uri;
	}>;
}
