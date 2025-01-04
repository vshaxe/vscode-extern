package vscode;

/**
 * An individual terminal instance within the integrated terminal.
 */
typedef Terminal = {
	/**
	 * The name of the terminal.
	 */
	var name(default, null):String;

	/**
	 * The process ID of the shell process.
	 */
	var processId(default, null):Thenable<Null<Int>>;

	/**
	 * The object used to initialize the terminal, this is useful for example to detecting the
	 * shell type of when the terminal was not launched by this extension or for detecting what
	 * folder the shell was launched in.
	 */
	var creationOptions(default, null): /*Readonly<*/ EitherType<TerminalOptions, ExtensionTerminalOptions> /*>*/;

	/**
	 * The exit status of the terminal, this will be undefined while the terminal is active.
	 *
	 * **Example:** Show a notification with the exit code when the terminal exits with a
	 * non-zero exit code.
	 * ```typescript
	 * window.onDidCloseTerminal(t => {
	 *   if (t.exitStatus && t.exitStatus.code) {
	 *   	vscode.window.showInformationMessage(`Exit code: ${t.exitStatus.code}`);
	 *   }
	 * });
	 * ```
	 */
	var ?exitStatus(default, null):TerminalExitStatus;

	/**
	 * The current state of the {@link Terminal}.
	 */
	var state(default, null):TerminalState;

	/**
	 * An object that contains [shell integration](https://code.visualstudio.com/docs/terminal/shell-integration)-powered
	 * features for the terminal. This will always be `undefined` immediately after the terminal
	 * is created. Listen to {@link window.onDidChangeTerminalShellIntegration} to be notified
	 * when shell integration is activated for a terminal.
	 *
	 * Note that this object may remain undefined if shell integration never activates. For
	 * example Command Prompt does not support shell integration and a user's shell setup could
	 * conflict with the automatic shell integration activation.
	 */
	var shellIntegration(default, null):Null<TerminalShellIntegration>;

	/**
	 * Send text to the terminal. The text is written to the stdin of the underlying pty process
	 * (shell) of the terminal.
	 *
	 * @param text The text to send.
	 * @param shouldExecute Indicates that the text being sent should be executed rather than just inserted in the terminal.
	 * The character(s) added are `\n` or `\r\n`, depending on the platform. This defaults to `true`.
	 */
	function sendText(text:String, ?shouldExecute:Bool):Void;

	/**
	 * Show the terminal panel and reveal this terminal in the UI.
	 *
	 * @param preserveFocus When `true` the terminal will not take focus.
	 */
	function show(?preserveFocus:Bool):Void;

	/**
	 * Hide the terminal panel if this terminal is currently showing.
	 */
	function hide():Void;

	/**
	 * Dispose and free associated resources.
	 */
	function dispose():Void;
}
