package vscode;

/**
 * Rendering style of the line numbers.
 */
@:jsRequire("vscode", "TextEditorLineNumbersStyle")
extern enum abstract TextEditorLineNumbersStyle(Int) {
	/**
	 * Do not render the line numbers.
	 */
	var Off;

	/**
	 * Render the line numbers.
	 */
	var On;

	/**
	 * Render the line numbers with values relative to the primary cursor location.
	 */
	var Relative;

	/**
	 * Render the line numbers on every 10th line number.
	 */
	var Interval;
}
