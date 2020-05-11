package vscode;

/**
 * Represents a color theme.
 */
typedef ColorTheme = {
	/**
	 * The kind of this color theme: light, dark or high contrast.
	 */
	var kind(default, null):ColorThemeKind;
}
