package vscode;

/**
 * Represents the alignment of status bar items.
 */
@:enum abstract StatusBarAlignment(Int) {
	/**
	 * Aligned to the left side.
	 */
	var Left = 0;

	/**
	 * Aligned to the right side.
	 */
	var Right = 1;
}
