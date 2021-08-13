package vscode;

/**
 * Represents a handle to a set of decorations
 * sharing the same {@link DecorationRenderOptions styling options} in a {@link TextEditor text editor}.
 *
 * To get an instance of a `TextEditorDecorationType` use
 * {@link window.createTextEditorDecorationType createTextEditorDecorationType}.
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
