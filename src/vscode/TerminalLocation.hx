package vscode;

/**
 * The location of the terminal.
 */
@:jsRequire("vscode", "TerminalLocation")
extern enum abstract TerminalLocation(Int) {
	/**
	 * In the terminal view
	 */
	var Panel;

	/**
	 * In the editor area
	 */
	var Editor;
}
