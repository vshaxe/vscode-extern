package vscode;

/**
 * Represents an event describing the change in a {@link TextEditor.selections text editor's selections}.
 */
typedef TextEditorSelectionChangeEvent = {
	/**
	 * The {@link TextEditor text editor} for which the selections have changed.
	 */
	var textEditor(default, null):TextEditor;

	/**
	 * The new value for the {@link TextEditor.selections text editor's selections}.
	 */
	var selections(default, null):ReadOnlyArray<Selection>;

	/**
	 * The {@link TextEditorSelectionChangeKind change kind} which has triggered this
	 * event. Can be `undefined`.
	 */
	var ?kind(default, null):TextEditorSelectionChangeKind;
}
