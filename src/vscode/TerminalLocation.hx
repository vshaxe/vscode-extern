package vscode;

/**
 * The location of the terminal.
 */
@:jsRequire("vscode", "TerminalLocation")
extern enum abstract TerminalLocation(Int) {
	/**
	 * In the terminal view
	 */
	var Panel = 1;

	/**
	 * In the editor area
	 */
	var Editor = 2;
}
