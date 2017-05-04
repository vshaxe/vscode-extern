package vscode;

/**
 * A location in the editor at which progress information can be shown. It depends on the
 * location how progress is visually represented.
 */
@:jsRequire("vscode", "ProgressLocation")
@:enum extern abstract ProgressLocation(Int) {
	/**
	 * Show progress for the source control viewlet, as overlay for the icon and as progress bar
	 * inside the viewlet (when visible).
	 */
	var SourceControl;

	/**
	 * Show progress in the status bar of the editor.
	 */
	var Window;
}
