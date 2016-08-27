package vscode;

/**
 * Describes what to do with the indentation when pressing Enter.
 */
@:enum abstract IndentAction(Int) {
	/**
	 * Insert new line and copy the previous line's indentation.
	 */
	var None = 0;

	/**
	 * Insert new line and indent once (relative to the previous line's indentation).
	 */
	var Indent = 1;

	/**
	 * Insert two new lines:
	 *  - the first one indented which will hold the cursor
	 *  - the second one at the same indentation level
	 */
	var IndentOutdent = 2;

	/**
	 * Insert new line and outdent once (relative to the previous line's indentation).
	 */
	var Outdent = 3;
}
