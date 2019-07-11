package vscode;

/**
 * Represents an event describing the change in a [text editor's options](#TextEditor.options).
 */
typedef TextEditorOptionsChangeEvent = {
	/**
	 * The [text editor](#TextEditor) for which the options have changed.
	 */
	var textEditor(default, null):TextEditor;

	/**
	 * The new value for the [text editor's options](#TextEditor.options).
	 */
	var options(default, null):TextEditorOptions;
}
