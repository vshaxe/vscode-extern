package vscode;

/**
 * A terminal profile defines how a terminal will be launched.
 */
@:jsRequire("vscode", "TerminalProfile")
extern class TerminalProfile {
	/**
	 * The options that the terminal will launch with.
	 */
	var options:EitherType<TerminalOptions, ExtensionTerminalOptions>;

	/**
	 * Creates a new terminal profile.
	 * @param options The options that the terminal will launch with.
	 */
	function new(options:EitherType<TerminalOptions, ExtensionTerminalOptions>);
}
