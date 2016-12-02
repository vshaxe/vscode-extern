package vscode;

/**
 * Represents an event describing the change of a [text editor's view column](#TextEditor.viewColumn).
 */
typedef TextEditorViewColumnChangeEvent = {
    /**
     * The [text editor](#TextEditor) for which the options have changed.
     */
    var textEditor:TextEditor;

    /**
     * The new value for the [text editor's view column](#TextEditor.viewColumn).
     */
    var viewColumn:ViewColumn;
}
