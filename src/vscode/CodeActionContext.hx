package vscode;

/**
 * Contains additional diagnostic information about the context in which
 * a [code action](#CodeActionProvider.provideCodeActions) is run.
 */
typedef CodeActionContext = {
	/**
	 * An array of diagnostics.
	 */
	var diagnostics(default, null):Array<Diagnostic>;

	/**
	 * Requested kind of actions to return.
	 *
	 * Actions not of this kind are filtered out before being shown by the lightbulb.
	 */
	@:optional var only(default, null):CodeActionKind;
}
