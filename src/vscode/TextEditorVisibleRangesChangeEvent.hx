package vscode;

/**
 * Represents an event describing the change in a {@link TextEditor.visibleRanges text editor's visible ranges}.
 */
typedef TextEditorVisibleRangesChangeEvent = {
	/**
	 * The {@link TextEditor text editor} for which the visible ranges have changed.
	 */
	var textEditor(default, null):TextEditor;

	/**
	 * The new value for the {@link TextEditor.visibleRanges text editor's visible ranges}.
	 */
	var visibleRanges(default, null):ReadOnlyArray<Range>;
}
