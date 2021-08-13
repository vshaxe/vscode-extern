package vscode;

/**
 * Represents sources that can cause {@link window.onDidChangeTextEditorSelection selection change events}.
 */
@:jsRequire("vscode", "TextEditorSelectionChangeKind")
extern enum abstract TextEditorSelectionChangeKind(Int) {
	/**
	 * Selection changed due to typing in the editor.
	 */
	var Keyboard;

	/**
	 * Selection change due to clicking in the editor.
	 */
	var Mouse;

	/**
	 * Selection changed because a command ran.
	 */
	var Command;
}
