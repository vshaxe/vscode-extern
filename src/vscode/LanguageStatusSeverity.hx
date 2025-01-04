package vscode;

/**
 * Represents the severity of a language status item.
 */
/**
 * Represents the severity level of a language status.
 */
@:jsRequire("vscode", "LanguageStatusSeverity")
extern enum abstract LanguageStatusSeverity(Int) {
	/**
	 * Informational severity level.
	 */
	var Information;

	/**
	 * Warning severity level.
	 */
	var Warning;

	/**
	 * Error severity level.
	 */
	var Error;
}
