package vscode;

/**
 * An event describing the changes to the set of [breakpoints](#Breakpoint).
 */
typedef BreakpointsChangeEvent = {
	/**
	 * Added breakpoints.
	 */
	var added(default, never):ReadonlyArray<Breakpoint>;

	/**
	 * Removed breakpoints.
	 */
	var removed(default, never):ReadonlyArray<Breakpoint>;

	/**
	 * Changed breakpoints.
	 */
	var changed(default, never):ReadonlyArray<Breakpoint>;
}
