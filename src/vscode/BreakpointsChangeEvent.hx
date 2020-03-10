package vscode;

/**
 * An event describing the changes to the set of [breakpoints](#Breakpoint).
 */
typedef BreakpointsChangeEvent = {
	/**
	 * Added breakpoints.
	 */
	var added(default, never):ReadOnlyArray<Breakpoint>;

	/**
	 * Removed breakpoints.
	 */
	var removed(default, never):ReadOnlyArray<Breakpoint>;

	/**
	 * Changed breakpoints.
	 */
	var changed(default, never):ReadOnlyArray<Breakpoint>;
}
