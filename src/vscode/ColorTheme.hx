package vscode;

/**
 * Represents a color theme.
 */
typedef ColorTheme = {
	/**
	 * The kind of this color theme: light, dark, high contrast dark and high contrast light.
	 */
	var kind(default, null):ColorThemeKind;
}
