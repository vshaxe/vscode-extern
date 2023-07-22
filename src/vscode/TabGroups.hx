package vscode;

/**
 * Represents the main editor area which consists of multple groups which contain tabs.
 */
typedef TabGroups = {
	/**
	 * All the groups within the group container.
	 */
	var all(default, never):ReadOnlyArray<TabGroup>;

	/**
	 * The currently active group.
	 */
	var activeTabGroup(default, never):TabGroup;

	/**
	 * An {@link Event event} which fires when {@link TabGroup tab groups} have changed.
	 */
	var onDidChangeTabGroups(default, never):Event<TabGroupChangeEvent>;

	/**
	 * An {@link Event event} which fires when {@link Tab tabs} have changed.
	 */
	var onDidChangeTabs(default, never):Event<TabChangeEvent>;

	/**
	 * Closes the tab group. This makes the tab group object invalid and the tab group
	 * should no longer be used for further actions.
	 * @param tabGroup The tab group to close.
	 * @param preserveFocus When `true` focus will remain in its current position.
	 * @returns A promise that resolves to `true` when all tab groups have been closed.
	 *
	 * Closes the tab. This makes the tab object invalid and the tab
	 * should no longer be used for further actions.
	 * Note: In the case of a dirty tab, a confirmation dialog will be shown which may be cancelled. If cancelled the tab is still valid
	 *
	 * @param tab The tab to close.
	 * @param preserveFocus When `true` focus will remain in its current position. If `false` it will jump to the next tab.
	 * @returns A promise that resolves to `true` when all tabs have been closed.
	 */
	@:overload(function(tabGroup:EitherType<TabGroup, ReadOnlyArray<TabGroup>>, ?preserveFocus:Bool):Thenable<Bool> {})
	function close(tab:EitherType<Tab, ReadOnlyArray<Tab>>, ?preserveFocus:Bool):Thenable<Bool>;
}
