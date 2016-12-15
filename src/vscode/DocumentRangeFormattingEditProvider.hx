package vscode;

/**
 * The document formatting provider interface defines the contract between extensions and
 * the formatting-feature.
 */
typedef DocumentRangeFormattingEditProvider = {
    /**
     * Provide formatting edits for a range in a document.
     *
     * The given range is a hint and providers can decide to format a smaller
     * or larger range. Often this is done by adjusting the start and end
     * of the range to full syntax nodes.
     *
     * @param document The document in which the command was invoked.
     * @param range The range which should be formatted.
     * @param options Options controlling formatting.
     * @param token A cancellation token.
     * @return A set of text edits or a thenable that resolves to such. The lack of a result can be
     * signaled by returning `undefined`, `null`, or an empty array.
     */
    function provideDocumentRangeFormattingEdits(document:TextDocument, range:Range, options:FormattingOptions, token:CancellationToken):ProviderResult<Array<TextEdit>>;
}
