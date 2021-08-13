package vscode;

/**
 * Represents an event describing the change in a {@link TextEditor.options text editor's options}.
 */
typedef TextEditorOptionsChangeEvent = {
	/**
	 * The {@link TextEditor text editor} for which the options have changed.
	 */
	var textEditor(default, null):TextEditor;

	/**
	 * The new value for the {@link TextEditor.options text editor's options}.
	 */
	var options(default, null):TextEditorOptions;
}
