package vscode;

/**
 * The definition provider interface defines the contract between extensions and
 * the [go to definition](https://code.visualstudio.com/docs/editor/editingevolved#_go-to-definition)
 * and peek definition features.
 */
typedef DefinitionProvider = {
	/**
	 * Provide the definition of the symbol at the given position and document.
	 *
	 * @param document The document in which the command was invoked.
	 * @param position The position at which the command was invoked.
	 * @param token A cancellation token.
	 * @return A definition or a thenable that resolves to such. The lack of a result can be
	 * signaled by returning `undefined` or `null`.
	 */
	function provideDefinition(document:TextDocument, position:Position, token:CancellationToken):ProviderResult<EitherType<Definition, Array<DefinitionLink>>>;
}
