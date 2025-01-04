package vscode;

/**
 * An event describing the change in Configuration
 */
typedef ConfigurationChangeEvent = {
	/**
	 * Checks if the given section has changed.
	 * If scope is provided, checks if the section has changed for resources under the given scope.
	 *
	 * @param section Configuration name, supports _dotted_ names.
	 * @param scope A scope in which to check.
	 * @returns `true` if the given section has changed.
	 */
	function affectsConfiguration(section:String, ?scope:ConfigurationScope):Bool;
}
