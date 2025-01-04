package vscode;

/**
 * Impacts the behavior and appearance of the validation message.
 */
/**
 * The severity level for input box validation.
 */
@:jsRequire("vscode", "InputBoxValidationSeverity")
extern enum abstract InputBoxValidationSeverity(Int) {
	/**
	 * Informational severity level.
	 */
	var Info;

	/**
	 * Warning severity level.
	 */
	var Warning;

	/**
	 * Error severity level.
	 */
	var Error;
}
