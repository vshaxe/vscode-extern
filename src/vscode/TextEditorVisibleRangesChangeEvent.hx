package vscode;

/**
 * Represents an event describing the change in a [text editor's visible ranges](#TextEditor.visibleRanges).
 */
typedef TextEditorVisibleRangesChangeEvent = {
	/**
	 * The [text editor](#TextEditor) for which the visible ranges have changed.
	 */
	var textEditor:TextEditor;

	/**
	 * The new value for the [text editor's visible ranges](#TextEditor.visibleRanges).
	 */
	var visibleRanges:Array<Range>;
}
