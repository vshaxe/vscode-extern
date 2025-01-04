package vscode;

/**
 * A reference to one of the workbench colors as defined in https://code.visualstudio.com/docs/getstarted/theme-color-reference.
 * Using a theme color is preferred over a custom color as it gives theme authors and users the possibility to change the color.
 */
@:jsRequire("vscode", "ThemeColor")
extern class ThemeColor {
	/**
	 * The id of this color.
	 */
	var id(default, null):String;

	/**
	 * Creates a reference to a theme color.
	 * @param id of the color. The available colors are listed in https://code.visualstudio.com/api/references/theme-color.
	 */
	function new(id:String);
}
