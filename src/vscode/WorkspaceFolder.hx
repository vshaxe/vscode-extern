package vscode;

/**
 * A workspace folder is one of potentially many roots opened by the editor. All workspace folders
 * are equal which means there is no notion of an active or master workspace folder.
 */
typedef WorkspaceFolder = {
	/**
	 * The associated uri for this workspace folder.
	 *
	 * *Note:* The [Uri](#Uri)-type was intentionally chosen such that future releases of the editor can support
	 * workspace folders that are not stored on the local disk, e.g. `ftp://server/workspaces/foo`.
	 */
	var uri(default, null):Uri;

	/**
	 * The name of this workspace folder. Defaults to
	 * the basename of its [uri-path](#Uri.path)
	 */
	var name(default, null):String;

	/**
	 * The ordinal number of this workspace folder.
	 */
	var index(default, null):Int;
}
