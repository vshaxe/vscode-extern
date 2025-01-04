package vscode;

/**
 * The confidence of a {@link TerminalShellExecutionCommandLine} value.
 */
@:jsRequire("vscode", "TerminalShellExecutionCommandLineConfidence")
extern enum abstract TerminalShellExecutionCommandLineConfidence(Int) {
	/**
	 * The command line value confidence is low. This means that the value was read from the
	 * terminal buffer using markers reported by the shell integration script. Additionally one
	 * of the following conditions will be met:
	 *
	 * - The command started on the very left-most column which is unusual, or
	 * - The command is multi-line which is more difficult to accurately detect due to line
	 *   continuation characters and right prompts.
	 * - Command line markers were not reported by the shell integration script.
	 */
	var Low;

	/**
	 * The command line value confidence is medium. This means that the value was read from the
	 * terminal buffer using markers reported by the shell integration script. The command is
	 * single-line and does not start on the very left-most column (which is unusual).
	 */
	var Medium;

	/**
	 * The command line value confidence is high. This means that the value was explicitly sent
	 * from the shell integration script or the command was executed via the
	 * {@link TerminalShellIntegration.executeCommand} API.
	 */
	var High;
}
