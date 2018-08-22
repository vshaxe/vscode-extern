package vscode;

/**
 * The implementation provider interface defines the contract between extensions and
 * the go to implementation feature.
 */
typedef ImplementationProvider = {
	/**
	 * Provide the implementations of the symbol at the given position and document.
	 *
	 * @param document The document in which the command was invoked.
	 * @param position The position at which the command was invoked.
	 * @param token A cancellation token.
	 * @return A definition or a thenable that resolves to such. The lack of a result can be
	 * signaled by returning `undefined` or `null`.
	 */
	function provideImplementation(document:TextDocument, position:Position, token:CancellationToken):ProviderResult<EitherType<Definition, Array<DefinitionLink>>>;
}
