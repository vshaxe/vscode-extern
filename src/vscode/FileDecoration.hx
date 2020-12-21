package vscode;

/**
 * A file decoration represents metadata that can be rendered with a file.
 */
@:jsRequire("vscode", "FileDecoration")
extern class FileDecoration {
	/**
	 * A very short string that represents this decoration.
	 */
	var badge:Null<String>;

	/**
	 * A human-readable tooltip for this decoration.
	 */
	var tooltip:Null<String>;

	/**
	 * The color of this decoration.
	 */
	var color:Null<ThemeColor>;

	/**
	 * A flag expressing that this decoration should be
	 * propagated to its parents.
	 */
	var propagate:Null<Bool>;

	/**
	 * Creates a new decoration.
	 *
	 * @param badge A letter that represents the decoration.
	 * @param tooltip The tooltip of the decoration.
	 * @param color The color of the decoration.
	 */
	function new(?badge:String, ?tooltip:String, ?color:ThemeColor);
}
