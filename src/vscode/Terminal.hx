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
	 * Send text to the terminal. The text is written to the stdin of the underlying pty process
	 * (shell) of the terminal.
	 *
	 * @param text The text to send.
	 * @param addNewLine Whether to add a new line to the text being sent, this is normally
	 * required to run a command in the terminal. The character(s) added are \n or \r\n
	 * depending on the platform. This defaults to `true`.
	 */
	function sendText(text:String, ?addNewLine:Bool):Void;

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
