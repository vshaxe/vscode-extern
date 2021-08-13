package vscode;

/**
 * Represents an event describing the change of a {@link TextEditor.viewColumn text editor's view column}.
 */
typedef TextEditorViewColumnChangeEvent = {
	/**
	 * The {@link TextEditor text editor} for which the view column has changed.
	 */
	var textEditor(default, null):TextEditor;

	/**
	 * The new value for the {@link TextEditor.viewColumn text editor's view column}.
	 */
	var viewColumn(default, null):ViewColumn;
}
