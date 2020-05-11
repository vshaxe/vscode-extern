package vscode;

/**
 * Represents a color theme kind.
 */
@:jsRequire("vscode", "ColorThemeKind")
extern enum abstract ColorThemeKind(Int) {
	var Light;
	var Dark;
	var HighContrast;
}
