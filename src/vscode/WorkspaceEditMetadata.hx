package vscode;

/**
 * Additional data about a workspace edit.
 */
typedef WorkspaceEditMetadata = {
	/**
	 * Signal to the editor that this edit is a refactoring.
	 */
	var ?isRefactoring:Bool;
}
