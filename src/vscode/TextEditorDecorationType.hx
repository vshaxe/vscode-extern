package vscode;

/**
 * Represents a handle to a set of decorations
 * sharing the same [styling options](#DecorationRenderOptions) in a [text editor](#TextEditor).
 *
 * To get an instance of a `TextEditorDecorationType` use
 * [createTextEditorDecorationType](#window.createTextEditorDecorationType).
 */
typedef TextEditorDecorationType = {
	/**
	 * Internal representation of the handle.
	 */
	var key(default, null):String;

	/**
	 * Remove this decoration type and all decorations on all text editors using it.
	 */
	function dispose():Void;
}
