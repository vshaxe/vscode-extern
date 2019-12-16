package vscode;

/**
 * An event that is fired after files are renamed.
 */
typedef FileRenameEvent = {
	/**
	 * The files that got renamed.
	 */
	var files(default, never):ReadonlyArray<{oldUri:Uri, newUri:Uri}>;
}
