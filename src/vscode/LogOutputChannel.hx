package vscode;

/**
 * A channel for containing log output.
 *
 * To get an instance of a `LogOutputChannel` use
 * {@link window.createOutputChannel createOutputChannel}.
 */
@:jsRequire("vscode", "OutputChannel")
extern class LogOutputChannel extends OutputChannel {
	/**
	 * The current log level of the channel. Defaults to {@link env.logLevel editor log level}.
	 */
	var logLevel(default, null):LogLevel;

	/**
	 * An {@link Event} which fires when the log level of the channel changes.
	 */
	var onDidChangeLogLevel(default, null):Event<LogLevel>;

	/**
	 * Outputs the given trace message to the channel. Use this method to log verbose information.
	 *
	 * The message is only logged if the channel is configured to display {@link LogLevel.Trace trace} log level.
	 *
	 * @param message trace message to log
	 */
	function trace(message:String, ...args:Any):Void;

	/**
	 * Outputs the given debug message to the channel.
	 *
	 * The message is only logged if the channel is configured to display {@link LogLevel.Debug debug} log level or lower.
	 *
	 * @param message debug message to log
	 */
	function debug(message:String, ...args:Any):Void;

	/**
	 * Outputs the given information message to the channel.
	 *
	 * The message is only logged if the channel is configured to display {@link LogLevel.Info info} log level or lower.
	 *
	 * @param message info message to log
	 */
	function info(message:String, ...args:Any):Void;

	/**
	 * Outputs the given warning message to the channel.
	 *
	 * The message is only logged if the channel is configured to display {@link LogLevel.Warning warning} log level or lower.
	 *
	 * @param message warning message to log
	 */
	function warn(message:String, ...args:Any):Void;

	/**
	 * Outputs the given error or error message to the channel.
	 *
	 * The message is only logged if the channel is configured to display {@link LogLevel.Error error} log level or lower.
	 *
	 * @param error Error or error message to log
	 */
	function error(error:EitherType<String, Error>, ...args:Any):Void;
}
