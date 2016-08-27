package vscode;

/**
 * Represents the workspace configuration. The workspace configuration
 * is always a merged view of the configuration of the current [workspace](#workspace.rootPath)
 * and the installation-wide configuration.
 */
typedef WorkspaceConfiguration = {
	/**
	 * Return a value from this configuration.
	 *
	 * @param section Configuration name, supports _dotted_ names.
	 * @param defaultValue A value should be returned when no value could be found, is `undefined`.
	 * @return The value `section` denotes or the default.
	 */
	function get<T>(section:String, ?defaultValue:T):T;

	/**
	 * Check if this configuration has a certain value.
	 *
	 * @param section configuration name, supports _dotted_ names.
	 * @return `true` iff the section doesn't resolve to `undefined`.
	 */
	function has(section:String):Bool;
}
