package vscode;

typedef FoldingRangeProvider = {
    /**
     * Returns a list of folding ranges or null and undefined if the provider
     * does not want to participate or was cancelled.
     * @param document The document in which the command was invoked.
     * @param context Additional context information (for future use)
     * @param token A cancellation token.
     */
    function provideFoldingRanges(document:TextDocument, context:FoldingContext, token:CancellationToken):ProviderResult<Array<FoldingRange>>;
}
