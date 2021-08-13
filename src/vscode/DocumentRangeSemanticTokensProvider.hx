package vscode;

/**
 * The document range semantic tokens provider interface defines the contract between extensions and
 * semantic tokens.
 */
typedef DocumentRangeSemanticTokensProvider = {
	/**
	 * @see {@link DocumentSemanticTokensProvider.provideDocumentSemanticTokens provideDocumentSemanticTokens}.
	 */
	function provideDocumentRangeSemanticTokens(document:TextDocument, range:Range, token:CancellationToken):ProviderResult<SemanticTokens>;
}
