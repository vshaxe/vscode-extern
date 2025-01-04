package vscode;

/**
 * An event describing changes to tab groups.
 */
typedef TabGroupChangeEvent = {
	/**
	 * Tab groups that have been opened.
	 */
	var opened(default, null):ReadOnlyArray<TabGroup>;

	/**
	 * Tab groups that have been closed.
	 */
	var closed(default, null):ReadOnlyArray<TabGroup>;

	/**
	 * Tab groups that have changed, e.g have changed
	 * their {@link TabGroup.isActive active} state.
	 */
	var changed(default, null):ReadOnlyArray<TabGroup>;
}
