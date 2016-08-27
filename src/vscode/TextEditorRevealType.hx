package vscode;

/**
 * Represents different [reveal](#TextEditor.revealRange) strategies in a text editor.
 */
@:enum abstract TextEditorRevealType(Int) {
	/**
	 * The range will be revealed with as little scrolling as possible.
	 */
	var Default = 0;

	/**
	 * The range will always be revealed in the center of the viewport.
	 */
	var InCenter = 1;

	/**
	 * If the range is outside the viewport, it will be revealed in the center of the viewport.
	 * Otherwise, it will be revealed with as little scrolling as possible.
	 */
	var InCenterIfOutsideViewport = 2;
}
