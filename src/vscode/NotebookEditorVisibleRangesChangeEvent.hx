package vscode;

/**
 * Represents an event describing the change in a {@link NotebookEditor.visibleRanges notebook editor's visibleRanges}.
 */
typedef NotebookEditorVisibleRangesChangeEvent = {
	/**
	 * The {@link NotebookEditor notebook editor} for which the visible ranges have changed.
	 */
	var notebookEditor(default, null):NotebookEditor;

	/**
	 * The new value for the {@link NotebookEditor.visibleRanges notebook editor's visibleRanges}.
	 */
	var visibleRanges(default, never):ReadOnlyArray<NotebookRange>;
}
