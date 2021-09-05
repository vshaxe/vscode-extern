package vscode;

/**
 * Value-object describing what options a virtual process terminal should use.
 */
typedef ExtensionTerminalOptions = {
	/**
	 * A human-readable string which will be used to represent the terminal in the UI.
	 */
	var name:String;

	/**
	 * An implementation of {@link Pseudoterminal} that allows an extension to
	 * control a terminal.
	 */
	var pty:Pseudoterminal;

	/**
	 * The icon path or {@link ThemeIcon} for the terminal.
	 */
	var ?iconPath:EitherType<Uri, EitherType<{light:Uri, dark:Uri}, ThemeIcon>>;

	/**
	 * The icon {@link ThemeColor} for the terminal.
	 * The standard `terminal.ansi*` theme keys are
	 * recommended for the best contrast and consistency across themes.
	 */
	var ?color:ThemeColor;
}
