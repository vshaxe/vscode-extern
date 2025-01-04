package vscode;

/**
 * Represents a tab within a {@link TabGroup group of tabs}.
 * Tabs are merely the graphical representation within the editor area.
 * A backing editor is not a guarantee.
 */
typedef Tab = {
	/**
	 * The text displayed on the tab.
	 */
	var label(default, null):String;

	/**
	 * The group which the tab belongs to.
	 */
	var group(default, null):TabGroup;

	/**
	 * Defines the structure of the tab i.e. text, notebook, custom, etc.
	 * Resource and other useful properties are defined on the tab kind.
	 */
	var input(default,
		null):Null<EitherType<TabInputText,
			EitherType<TabInputTextDiff,
				EitherType<TabInputCustom, EitherType<TabInputWebview, EitherType<TabInputNotebook, EitherType<TabInputNotebookDiff, TabInputTerminal>>>>>>>;

	/**
	 * Whether or not the tab is currently active.
	 * This is dictated by being the selected tab in the group.
	 */
	var isActive(default, null):Bool;

	/**
	 * Whether or not the dirty indicator is present on the tab.
	 */
	var isDirty(default, null):Bool;

	/**
	 * Whether or not the tab is pinned (pin icon is present).
	 */
	var isPinned(default, null):Bool;

	/**
	 * Whether or not the tab is in preview mode.
	 */
	var isPreview(default, null):Bool;
}
