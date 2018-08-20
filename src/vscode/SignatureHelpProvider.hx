package vscode;

/**
 * The signature help provider interface defines the contract between extensions and
 * the [parameter hints](https://code.visualstudio.com/docs/editor/intellisense)-feature.
 */
typedef SignatureHelpProvider = {
	/**
	 * Provide help for the signature at the given position and document.
	 *
	 * @param document The document in which the command was invoked.
	 * @param position The position at which the command was invoked.
	 * @param token A cancellation token.
	 * @return Signature help or a thenable that resolves to such. The lack of a result can be
	 * signaled by returning `undefined` or `null`.
	 */
	function provideSignatureHelp(document:TextDocument, position:Position, token:CancellationToken):ProviderResult<SignatureHelp>;
}
