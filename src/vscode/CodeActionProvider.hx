package vscode;

/**
 * The code action interface defines the contract between extensions and
 * the [lightbulb](https://code.visualstudio.com/docs/editor/editingevolved#_code-action) feature.
 *
 * A code action can be any command that is {@link commands.getCommands known} to the system.
 */
typedef CodeActionProvider<T:CodeAction> = {
	/**
	 * Provide commands for the given document and range.
	 *
	 * @param document The document in which the command was invoked.
	 * @param range The selector or range for which the command was invoked. This will always be a selection if
	 * there is a currently active editor.
	 * @param context Context carrying additional information.
	 * @param token A cancellation token.
	 *
	 * @return An array of code actions, such as quick fixes or refactorings. The lack of a result can be signaled
	 * by returning `undefined`, `null`, or an empty array.
	 *
	 * We also support returning `Command` for legacy reasons, however all new extensions should return
	 * `CodeAction` object instead.
	 */
	function provideCodeActions(document:TextDocument, range:EitherType<Range, Selection>, context:CodeActionContext,
		token:CancellationToken):ProviderResult<Array<EitherType<Command, T>>>;

	/**
	 * Given a code action fill in its {@linkcode CodeAction.edit edit}-property. Changes to
	 * all other properties, like title, are ignored. A code action that has an edit
	 * will not be resolved.
	 *
	 * *Note* that a code action provider that returns commands, not code actions, cannot successfully
	 * implement this function. Returning commands is deprecated and instead code actions should be
	 * returned.
	 *
	 * @param codeAction A code action.
	 * @param token A cancellation token.
	 * @return The resolved code action or a thenable that resolves to such. It is OK to return the given
	 * `item`. When no result is returned, the given `item` will be used.
	 */
	@:optional function resolveCodeAction(codeAction:T, token:CancellationToken):ProviderResult<T>;
}
