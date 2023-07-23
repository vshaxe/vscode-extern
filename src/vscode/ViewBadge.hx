package vscode;

/**
 * A badge presenting a value for a view
 */
extern interface ViewBadge {
	/**
	 * A label to present in tooltip for the badge.
	 */
	var tooltip(default, null):String;

	/**
	 * The value to present in the badge.
	 */
	var value(default, null):Float;
}
