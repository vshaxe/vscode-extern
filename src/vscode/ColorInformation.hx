package vscode;

/**
 * Represents a color range from a document.
 */
@:jsRequire("vscode", "ColorInformation")
extern class ColorInformation {
	/**
	 * The range in the document where this color appears.
	 */
	var range:Range;

	/**
	 * The actual color value for this color range.
	 */
	var color:Color;

	/**
	 * Creates a new color range.
	 *
	 * @param range The range the color appears in. Must not be empty.
	 * @param color The value of the color.
	 * @param format The format in which this color is currently formatted.
	 */
	function new(range:Range, color:Color);
}
