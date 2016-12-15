package vscode;

/**
 * The document symbol provider interface defines the contract between extensions and
 * the [go to symbol](https://code.visualstudio.com/docs/editor/editingevolved#_goto-symbol)-feature.
 */
typedef DocumentSymbolProvider = {
    /**
     * Provide symbol information for the given document.
     *
     * @param document The document in which the command was invoked.
     * @param token A cancellation token.
     * @return An array of document highlights or a thenable that resolves to such. The lack of a result can be
     * signaled by returning `undefined`, `null`, or an empty array.
     */
    function provideDocumentSymbols(document:TextDocument, token:CancellationToken):ProviderResult<Array<SymbolInformation>>;
}
