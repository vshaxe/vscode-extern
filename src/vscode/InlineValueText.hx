package vscode;

/**
 * Provide inline value as text.
 */
@:jsRequire("vscode", "InlineValueText")
extern class InlineValueText {
	/**
	 * The document range for which the inline value applies.
	 */
	var range(default, null):Range;

	/**
	 * The text of the inline value.
	 */
	var text(default, null):String;

	/**
	 * Creates a new InlineValueText object.
	 *
	 * @param range The document line where to show the inline value.
	 * @param text The value to be shown for the line.
	 */
	function new(range:Range, text:String);
}
