package vscode;

/**
 * Represents the debug console.
 */
typedef DebugConsole = {
	/**
	 * Append the given value to the debug console.
	 *
	 * @param value A string, falsy values will not be printed.
	 */
	function append(value:String):Void;

	/**
	 * Append the given value and a line feed character
	 * to the debug console.
	 *
	 * @param value A string, falsy values will be printed.
	 */
	function appendLine(value:String):Void;
}
