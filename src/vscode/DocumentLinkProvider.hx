package vscode;

/**
 * The document link provider defines the contract between extensions and feature of showing
 * links in the editor.
 */
typedef DocumentLinkProvider = {
    /**
     * Provide links for the given document. Note that the editor ships with a default provider that detects
     * `http(s)` and `file` links.
     *
     * @param document The document in which the command was invoked.
     * @param token A cancellation token.
     * @return An array of [document links](#DocumentLink) or a thenable that resolves to such. The lack of a result
     * can be signaled by returning `undefined`, `null`, or an empty array.
     */
    function provideDocumentLinks(document:TextDocument, token:CancellationToken):ProviderResult<Array<DocumentLink>>;

    /**
     * Given a link fill in its [target](#DocumentLink.target). This method is called when an incomplete
     * link is selected in the UI. Providers can implement this method and return incomple links
     * (without target) from the [`provideDocumentLinks`](#DocumentLinkProvider.provideDocumentLinks) method which
     * often helps to improve performance.
     *
     * @param link The link that is to be resolved.
     * @param token A cancellation token.
     */
    @:optional var resolveDocumentLink:DocumentLink->CancellationToken->ProviderResult<DocumentLink>;
}
