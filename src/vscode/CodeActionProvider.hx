package vscode;

/**
 * The code action interface defines the contract between extensions and
 * the [light bulb](https://code.visualstudio.com/docs/editor/editingevolved#_code-action) feature.
 *
 * A code action can be any command that is [known](#commands.getCommands) to the system.
 */
typedef CodeActionProvider = {
	/**
	 * Provide commands for the given document and range.
	 *
	 * @param document The document in which the command was invoked.
	 * @param range The selector or range for which the command was invoked. This will always be a selection if
	 * there is a currently active editor.
	 * @param context Context carrying additional information.
	 * @param token A cancellation token.
	 * @return An array of commands, quick fixes, or refactorings or a thenable of such. The lack of a result can be
	 * signaled by returning `undefined`, `null`, or an empty array.
	 */
	function provideCodeActions(document:TextDocument, range:EitherType<Range, Selection>, context:CodeActionContext, token:CancellationToken):ProviderResult<Array<EitherType<Command, CodeAction>>>;
}
