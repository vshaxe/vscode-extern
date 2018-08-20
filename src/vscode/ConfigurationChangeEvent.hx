package vscode;

/**
 * An event describing the change in Configuration
 */
typedef ConfigurationChangeEvent = {
	/**
	 * Returns `true` if the given section for the given resource (if provided) is affected.
	 *
	 * @param section Configuration name, supports _dotted_ names.
	 * @param resource A resource Uri.
	 * @return `true` if the given section for the given resource (if provided) is affected.
	 */
	function affectsConfiguration(section:String, ?resource:Uri):Bool;
}
