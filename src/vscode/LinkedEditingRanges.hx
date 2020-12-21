package vscode;

/**
 * Represents a list of ranges that can be edited together along with a word pattern to describe valid range contents.
 */
@:jsRequire("vscode", "LinkedEditingRanges")
extern class LinkedEditingRanges {
	/**
	 * Create a new linked editing ranges object.
	 *
	 * @param ranges A list of ranges that can be edited together
	 * @param wordPattern An optional word pattern that describes valid contents for the given ranges
	 */
	function new(ranges:Array<Range>, ?wordPattern:RegExp);

	/**
	 * A list of ranges that can be edited together. The ranges must have
	 * identical length and text content. The ranges cannot overlap.
	 */
	var ranges(default, null):Array<Range>;

	/**
	 * An optional word pattern that describes valid contents for the given ranges.
	 * If no pattern is provided, the language configuration's word pattern will be used.
	 */
	var wordPattern(default, null):Null<RegExp>;
}
