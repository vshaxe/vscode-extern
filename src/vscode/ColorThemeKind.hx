package vscode;

/**
 * Represents a color theme kind.
 */
@:jsRequire("vscode", "ColorThemeKind")
extern enum abstract ColorThemeKind(Int) {
	/**
	 * A light color theme.
	 */
	var Light;

	/**
	 * A dark color theme.
	 */
	var Dark;

	/**
	 * A dark high contrast color theme.
	 */
	var HighContrast;

	/**
	 * A light high contrast color theme.
	 */
	var HighContrastLight;
}
