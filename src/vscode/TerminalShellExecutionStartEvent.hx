package vscode;

/**
 * An event signalling that an execution has started in a terminal.
 */
typedef TerminalShellExecutionStartEvent = {
	/**
	 * The terminal that shell integration has been activated in.
	 */
	var terminal(default, null):Terminal;

	/**
	 * The shell integration object.
	 */
	var shellIntegration(default, null):TerminalShellIntegration;

	/**
	 * The terminal shell execution that has ended.
	 */
	var execution(default, null):TerminalShellExecution;
}
