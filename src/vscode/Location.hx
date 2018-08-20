package vscode;

/**
 * Represents a location inside a resource, such as a line
 * inside a text file.
 */
@:jsRequire("vscode", "Location")
extern class Location {
	/**
	 * The resource identifier of this location.
	 */
	var uri:Uri;

	/**
	 * The document range of this location.
	 */
	var range:Range;

	/**
	 * Creates a new location object.
	 *
	 * @param uri The resource identifier.
	 * @param rangeOrPosition The range or position. Positions will be converted to an empty range.
	 */
	function new(uri:Uri, rangeOrPosition:EitherType<Range, Position>);
}
