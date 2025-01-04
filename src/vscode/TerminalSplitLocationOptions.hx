package vscode;

/**
 * Uses the parent {@link Terminal}'s location for the terminal
 */
typedef TerminalSplitLocationOptions = {
	/**
	 * The parent terminal to split this terminal beside. This works whether the parent terminal
	 * is in the panel or the editor area.
	 */
	var parentTerminal:Terminal;
}
