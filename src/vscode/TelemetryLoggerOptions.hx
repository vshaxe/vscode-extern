package vscode;

import Vscode.Record;

/**
 * Options for creating a {@link TelemetryLogger}
 */
typedef TelemetryLoggerOptions = {
	/**
	 * Whether or not you want to avoid having the built-in common properties such as os, extension name, etc injected into the data object.
	 * Defaults to `false` if not defined.
	 */
	var ?ignoreBuiltInCommonProperties(default, null):Bool;

	/**
	 * Whether or not unhandled errors on the extension host caused by your extension should be logged to your sender.
	 * Defaults to `false` if not defined.
	 */
	var ?ignoreUnhandledErrors(default, null):Bool;

	/**
	 * Any additional common properties which should be injected into the data object.
	 */
	var ?additionalCommonProperties(default, null):Record<String, Any>;
}
