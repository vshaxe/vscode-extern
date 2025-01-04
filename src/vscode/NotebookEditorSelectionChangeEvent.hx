package vscode;

/**
 * Represents an event describing the change in a {@link NotebookEditor.selections notebook editor's selections}.
 */
typedef NotebookEditorSelectionChangeEvent = {
	/**
	 * The {@link NotebookEditor notebook editor} for which the selections have changed.
	 */
	var notebookEditor(default, null):NotebookEditor;

	/**
	 * The new value for the {@link NotebookEditor.selections notebook editor's selections}.
	 */
	var selections(default, null):ReadOnlyArray<NotebookRange>;
}
