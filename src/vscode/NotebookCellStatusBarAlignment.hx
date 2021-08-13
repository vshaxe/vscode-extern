package vscode;

/**
 * Represents the alignment of status bar items.
 */
@:jsRequire("vscode", "NotebookCellStatusBarAlignment")
extern enum abstract NotebookCellStatusBarAlignment(Int) {
	/**
	 * Aligned to the left side.
	 */
	final Left;

	/**
	 * Aligned to the right side.
	 */
	final Right;
}
