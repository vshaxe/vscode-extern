package vscode;

/**
 * An event describing the changes to the set of [breakpoints](#Breakpoint).
 */
typedef BreakpointsChangeEvent = {
	/**
	 * Added breakpoints.
	 */
	var added(default, never):Array<Breakpoint>;

	/**
	 * Removed breakpoints.
	 */
	var removed(default, never):Array<Breakpoint>;

	/**
	 * Changed breakpoints.
	 */
	var changed(default, never):Array<Breakpoint>;
}
