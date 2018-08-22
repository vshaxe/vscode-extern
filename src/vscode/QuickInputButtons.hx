package vscode;

/**
 * Predefined buttons for [QuickPick](#QuickPick) and [InputBox](#InputBox).
 */
@:jsRequire("vscode", "QuickInputButtons")
extern class QuickInputButtons {
	/**
	 * A back button for [QuickPick](#QuickPick) and [InputBox](#InputBox).
	 *
	 * When a navigation 'back' button is needed this one should be used for consistency.
	 * It comes with a predefined icon, tooltip and location.
	 */
	public static var Back(default, never):QuickInputButton;

	/**
	 * @hidden
	 */
	private function new();
}
