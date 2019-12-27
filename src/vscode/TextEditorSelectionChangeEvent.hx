package vscode;

/**
 * Represents an event describing the change in a [text editor's selections](#TextEditor.selections).
 */
typedef TextEditorSelectionChangeEvent = {
	/**
	 * The [text editor](#TextEditor) for which the selections have changed.
	 */
	var textEditor(default, null):TextEditor;

	/**
	 * The new value for the [text editor's selections](#TextEditor.selections).
	 */
	var selections(default, null):ReadonlyArray<Selection>;

	/**
	 * The [change kind](#TextEditorSelectionChangeKind) which has triggered this
	 * event. Can be `undefined`.
	 */
	var ?kind(default, null):TextEditorSelectionChangeKind;
}
