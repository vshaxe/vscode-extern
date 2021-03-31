package vscode;

/**
 * Provide inline value through a variable lookup.
 * If only a range is specified, the variable name will be extracted from the underlying document.
 * An optional variable name can be used to override the extracted name.
 */
@:jsRequire("vscode", "InlineValueVariableLookup")
extern class InlineValueVariableLookup {
	/**
	 * The document range for which the inline value applies.
	 * The range is used to extract the variable name from the underlying document.
	 */
	var range(default, null):Range;

	/**
	 * If specified the name of the variable to look up.
	 */
	var variableName(default, null):Null<String>;

	/**
	 * How to perform the lookup.
	 */
	var caseSensitiveLookup(default, null):Bool;

	/**
	 * Creates a new InlineValueVariableLookup object.
	 *
	 * @param range The document line where to show the inline value.
	 * @param variableName The name of the variable to look up.
	 * @param caseSensitiveLookup How to perform the lookup. If missing lookup is case sensitive.
	 */
	function new(range:Range, ?variableName:String, ?caseSensitiveLookup:Bool);
}
