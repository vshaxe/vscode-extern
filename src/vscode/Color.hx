package vscode;

/**
 * Represents a color in RGBA space.
 */
@:jsRequire("vscode", "Color")
extern class Color {
	/**
	 * The red component of this color in the range [0-1].
	 */
	var red(default, null):Float;

	/**
	 * The green component of this color in the range [0-1].
	 */
	var green(default, null):Float;

	/**
	 * The blue component of this color in the range [0-1].
	 */
	var blue(default, null):Float;

	/**
	 * The alpha component of this color in the range [0-1].
	 */
	var alpha(default, null):Float;

	/**
	 * Creates a new color instance.
	 *
	 * @param red The red component.
	 * @param green The green component.
	 * @param blue The blue component.
	 * @param alpha The alpha component.
	 */
	function new(red:Float, green:Float, blue:Float, alpha:Float);
}
