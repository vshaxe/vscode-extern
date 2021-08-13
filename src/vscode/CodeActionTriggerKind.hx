package vscode;

/**
 * The reason why code actions were requested.
 */
@:jsRequire("vscode", "CodeActionTriggerKind")
extern enum abstract CodeActionTriggerKind(Int) {
	/**
	 * Code actions were explicitly requested by the user or by an extension.
	 */
	final Invoke;

	/**
	 * Code actions were requested automatically.
	 *
	 * This typically happens when current selection in a file changes, but can
	 * also be triggered when file content changes.
	 */
	final Automatic;
}
