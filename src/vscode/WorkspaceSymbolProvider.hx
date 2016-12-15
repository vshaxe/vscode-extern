package vscode;

/**
 * The workspace symbol provider interface defines the contract between extensions and
 * the [symbol search](https://code.visualstudio.com/docs/editor/editingevolved#_open-symbol-by-name)-feature.
 */
typedef WorkspaceSymbolProvider = {
    /**
     * Project-wide search for a symbol matching the given query string. It is up to the provider
     * how to search given the query string, like substring, indexOf etc. To improve performance implementors can
     * skip the [location](#SymbolInformation.location) of symbols and implement `resolveWorkspaceSymbol` to do that
     * later.
     *
     * @param query A non-empty query string.
     * @param token A cancellation token.
     * @return An array of document highlights or a thenable that resolves to such. The lack of a result can be
     * signaled by returning `undefined`, `null`, or an empty array.
     */
    function provideWorkspaceSymbols(query:String, token:CancellationToken):ProviderResult<Array<SymbolInformation>>;

    /**
     * Given a symbol fill in its [location](#SymbolInformation.location). This method is called whenever a symbol
     * is selected in the UI. Providers can implement this method and return incomplete symbols from
     * [`provideWorkspaceSymbols`](#WorkspaceSymbolProvider.provideWorkspaceSymbols) which often helps to improve
     * performance.
     *
     * @param symbol The symbol that is to be resolved. Guaranteed to be an instance of an object returned from an
     * earlier call to `provideWorkspaceSymbols`.
     * @param token A cancellation token.
     * @return The resolved symbol or a thenable that resolves to that. When no result is returned,
     * the given `symbol` is used.
     */
    @:optional var resolveWorkspaceSymbol:SymbolInformation->CancellationToken->ProviderResult<SymbolInformation>;
}
