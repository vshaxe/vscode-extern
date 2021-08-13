package vscode;

/**
 * An event describing an individual change in the text of a {@link TextDocument document}.
 */
typedef TextDocumentContentChangeEvent = {
	/**
	 * The range that got replaced.
	 */
	var range(default, null):Range;

	/**
	 * The offset of the range that got replaced.
	 */
	var rangeOffset(default, null):Int;

	/**
	 * The length of the range that got replaced.
	 */
	var rangeLength(default, null):Int;

	/**
	 * The new text for the range.
	 */
	var text(default, null):String;
}
