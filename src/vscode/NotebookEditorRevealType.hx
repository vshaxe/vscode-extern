package vscode;

/**
 * Represents a notebook editor that is attached to a {@link NotebookDocument notebook}.
 */
@:jsRequire("vscode", "NotebookEditorRevealType")
extern enum abstract NotebookEditorRevealType(Int) {
	/**
	 * The range will be revealed with as little scrolling as possible.
	 */
	var Default;

	/**
	 * The range will always be revealed in the center of the viewport.
	 */
	var InCenter;

	/**
	 * If the range is outside the viewport, it will be revealed in the center of the viewport.
	 * Otherwise, it will be revealed with as little scrolling as possible.
	 */
	var InCenterIfOutsideViewport;

	/**
	 * The range will always be revealed at the top of the viewport.
	 */
	var AtTop;
}
