package vscode;

/**
 * The scope object to which the environment variable collection applies.
 */
typedef EnvironmentVariableScope = {
	/**
	 * Any specific workspace folder to get collection for.
	 */
	var ?workspaceFolder:WorkspaceFolder;
}
