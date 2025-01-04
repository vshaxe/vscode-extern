package vscode;

/**
 * An event signalling that a terminal's shell integration has changed.
 */
typedef TerminalShellIntegrationChangeEvent = {
	/**
	 * The terminal that shell integration has been activated in.
	 */
	var terminal(default, null):Terminal;

	/**
	 * The shell integration object.
	 */
	var shellIntegration(default, null):TerminalShellIntegration;
}
