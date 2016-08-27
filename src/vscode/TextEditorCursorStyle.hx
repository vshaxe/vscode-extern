package vscode;

/**
 * Rendering style of the cursor.
 */
@:enum abstract TextEditorCursorStyle(Int) {
	/**
	 * Render the cursor as a vertical line.
	 */
	var Line = 1;

	/**
	 * Render the cursor as a block.
	 */
	var Block = 2;

	/**
	 * Render the cursor as a horizontal line under the character.
	 */
	var Underline = 3;
}
