package vscode;

/**
 * The configuration target
 */
@:jsRequire("vscode", "ConfigurationTarget")
extern enum abstract ConfigurationTarget(Int) {
	/**
	 * Global configuration
	 */
	var Global;

	/**
	 * Workspace configuration
	 */
	var Workspace;

	/**
	 * Workspace folder configuration
	 */
	var WorkspaceFolder;
}
