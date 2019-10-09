package vscode;

/**
 * Represents the dimensions of a terminal.
 */
typedef TerminalDimensions = {
	/**
	 * The number of columns in the terminal.
	 */
	var columns(default, null):Int;

	/**
	 * The number of rows in the terminal.
	 */
	var rows(default, null):Int;
}
