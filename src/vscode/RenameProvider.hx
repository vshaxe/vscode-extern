package vscode;

/**
 * The rename provider interface defines the contract between extensions and
 * the [rename](https://code.visualstudio.com/docs/editor/editingevolved#_rename-symbol)-feature.
 */
typedef RenameProvider = {
	/**
	 * Provide an edit that describes changes that have to be made to one
	 * or many resources to rename a symbol to a different name.
	 *
	 * @param document The document in which the command was invoked.
	 * @param position The position at which the command was invoked.
	 * @param newName The new name of the symbol. If the given name is not valid, the provider must return a rejected promise.
	 * @param token A cancellation token.
	 * @return A workspace edit or a thenable that resolves to such. The lack of a result can be
	 * signaled by returning `undefined` or `null`.
	 */
	function provideRenameEdits(document:TextDocument, position:Position, newName:String, token:CancellationToken):ProviderResult<WorkspaceEdit>;

	/**
	 * Optional function for resolving and validating a position *before* running rename. The result can
	 * be a range or a range and a placeholder text. The placeholder text should be the identifier of the symbol
	 * which is being renamed - when omitted the text in the returned range is used.
	 *
	 * @param document The document in which rename will be invoked.
	 * @param position The position at which rename will be invoked.
	 * @param token A cancellation token.
	 * @return The range or range and placeholder text of the identifier that is to be renamed. The lack of a result can signaled by returning `undefined` or `null`.
	 */
	@:optional var prepareRename:TextDocument->Position->CancellationToken->ProviderResult<EitherType<Range, {range:Range, placeholder:String}>>;
	// TODO: use Haxe 4 function types whenever we drop Haxe 3.4 support for the externs (lets us have argument names)
	// function prepareRename?(document: TextDocument, position: Position, token: CancellationToken): ProviderResult<Range | { range: Range, placeholder: string }>;
}
