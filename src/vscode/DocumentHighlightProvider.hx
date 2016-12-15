package vscode;

/**
 * The document highlight provider interface defines the contract between extensions and
 * the word-highlight-feature.
 */
typedef DocumentHighlightProvider = {
    /**
     * Provide a set of document highlights, like all occurrences of a variable or
     * all exit-points of a function.
     *
     * @param document The document in which the command was invoked.
     * @param position The position at which the command was invoked.
     * @param token A cancellation token.
     * @return An array of document highlights or a thenable that resolves to such. The lack of a result can be
     * signaled by returning `undefined`, `null`, or an empty array.
     */
    function provideDocumentHighlights(document:TextDocument, position:Position, token:CancellationToken):ProviderResult<Array<DocumentHighlight>>;
}
