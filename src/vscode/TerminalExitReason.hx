package vscode;

/**
 * Terminal exit reason kind.
 */
@:jsRequire("vscode", "TerminalExitReason")
extern enum abstract TerminalExitReason(Int) {
	/**
	 * Unknown reason.
	 */
	var Unknown;

	/**
	 * The window closed/reloaded.
	 */
	var Shutdown;

	/**
	 * The shell process exited.
	 */
	var Process;

	/**
	 * The user closed the terminal.
	 */
	var User;

	/**
	 * An extension disposed the terminal.
	 */
	var Extension;
}
