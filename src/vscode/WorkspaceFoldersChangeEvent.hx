package vscode;

/**
 * An event describing a change to the set of [workspace folders](#workspace.workspaceFolders).
 */
typedef WorkspaceFoldersChangeEvent = {
	/**
	 * Added workspace folders.
	 */
	var added(default, null):ReadOnlyArray<WorkspaceFolder>;

	/**
	 * Removed workspace folders.
	 */
	var removed(default, null):ReadOnlyArray<WorkspaceFolder>;
}
