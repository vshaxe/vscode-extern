package vscode;

/**
 * Additional metadata about the type of a diagnostic.
 */
@:jsRequire("vscode", "DiagnosticTag")
@:enum extern abstract DiagnosticTag(String) {
	/**
	 * Unused or unnecessary code.
	 *
	 * Diagnostics with this tag are rendered faded out. The amount of fading
	 * is controlled by the `"editorUnnecessaryCode.opacity"` theme color. For
	 * example, `"editorUnnecessaryCode.opacity": "#000000c0"` will render the
	 * code with 75% opacity. For high contrast themes, use the
	 * `"editorUnnecessaryCode.border"` theme color to underline unnecessary code
	 * instead of fading it out.
	 */
	var Unnecessary;
}
