package vscode;

/**
 * Represents the severity of a language status item.
 */
/**
 * Represents the severity level of a language status.
 */
@:jsRequire("vscode", "LogLevel")
extern enum abstract LogLevel(Int) {
	/**
	 * No messages are logged with this level.
	 */
	var Off;

	/**
	 * All messages are logged with this level.
	 */
	var Trace;

	/**
	 * Messages with debug and higher log level are logged with this level.
	 */
	var Debug;

	/**
	 * Messages with info and higher log level are logged with this level.
	 */
	var Info;

	/**
	 * Messages with warning and higher log level are logged with this level.
	 */
	var Warning;

	/**
	 * Only error messages are logged with this level.
	 */
	var Error;
}
