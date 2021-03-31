package vscode;

/**
 * A value-object that contains contextual information when requesting inline values from a InlineValuesProvider.
 */
typedef InlineValueContext = {
	/**
	 * The stack frame (as a DAP Id) where the execution has stopped.
	 */
	var frameId(default, null):Int;

	/**
	 * The document range where execution has stopped.
	 * Typically the end position of the range denotes the line where the inline values are shown.
	 */
	var stoppedLocation(default, null):Range;
}
