package vscode;

/**
 * An event describing change to tabs.
 */
typedef TabChangeEvent = {
	/**
	 * The tabs that have been opened.
	 */
	var opened(default, never):ReadOnlyArray<Tab>;

	/**
	 * The tabs that have been closed.
	 */
	var closed(default, never):ReadOnlyArray<Tab>;

	/**
	 * Tabs that have changed, e.g have changed
	 * their {@link Tab.isActive active} state.
	 */
	var changed(default, never):ReadOnlyArray<Tab>;
}
