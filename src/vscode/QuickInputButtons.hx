package vscode;

/**
 * Predefined buttons for {@link QuickPick} and {@link InputBox}.
 */
@:jsRequire("vscode", "QuickInputButtons")
extern class QuickInputButtons {
	/**
	 * A back button for {@link QuickPick} and {@link InputBox}.
	 *
	 * When a navigation 'back' button is needed this one should be used for consistency.
	 * It comes with a predefined icon, tooltip and location.
	 */
	public static final Back:QuickInputButton;

	/**
	 * @hidden
	 */
	private function new();
}
