package vscode;

/**
 * Rendering style of the cursor.
 */
@:jsRequire("vscode", "TextEditorCursorStyle")
@:enum extern abstract TextEditorCursorStyle(Int) {
    /**
     * Render the cursor as a vertical line.
     */
    var Line;

    /**
     * Render the cursor as a block.
     */
    var Block;

    /**
     * Render the cursor as a horizontal line under the character.
     */
    var Underline;
}
