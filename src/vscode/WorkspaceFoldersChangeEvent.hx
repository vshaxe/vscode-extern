package vscode;

/**
 * An event describing a change to the set of {@link workspace.workspaceFolders workspace folders}.
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
