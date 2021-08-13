package vscode;

/**
 * Contains additional diagnostic information about the context in which
 * a {@link CodeActionProvider.provideCodeActions code action} is run.
 */
typedef CodeActionContext = {
	/**
	 * The reason why code actions were requested.
	 */
	final triggerKind:CodeActionTriggerKind;

	/**
	 * An array of diagnostics.
	 */
	var diagnostics(default, null):ReadOnlyArray<Diagnostic>;

	/**
	 * Requested kind of actions to return.
	 *
	 * Actions not of this kind are filtered out before being shown by the [lightbulb](https://code.visualstudio.com/docs/editor/editingevolved#_code-action).
	 */
	var ?only(default, null):CodeActionKind;
}
