package vscode;

/**
 * A link on a terminal line.
 */
typedef TerminalLink = {
	/**
	 * The start index of the link on [TerminalLinkContext.line](#TerminalLinkContext.line].
	 */
	var startIndex:Int;

	/**
	 * The length of the link on [TerminalLinkContext.line](#TerminalLinkContext.line]
	 */
	var length:Int;

	/**
	 * The tooltip text when you hover over this link.
	 *
	 * If a tooltip is provided, is will be displayed in a string that includes instructions on
	 * how to trigger the link, such as `{0} (ctrl + click)`. The specific instructions vary
	 * depending on OS, user settings, and localization.
	 */
	var ?tooltip:String;
}
