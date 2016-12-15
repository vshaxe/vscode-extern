package vscode;

/**
 * The reference provider interface defines the contract between extensions and
 * the [find references](https://code.visualstudio.com/docs/editor/editingevolved#_peek)-feature.
 */
typedef ReferenceProvider = {
    /**
     * Provide a set of project-wide references for the given position and document.
     *
     * @param document The document in which the command was invoked.
     * @param position The position at which the command was invoked.
     * @param context
     * @param token A cancellation token.
     * @return An array of locations or a thenable that resolves to such. The lack of a result can be
     * signaled by returning `undefined`, `null`, or an empty array.
     */
    function provideReferences(document:TextDocument, position:Position, context:ReferenceContext, token:CancellationToken):ProviderResult<Array<Location>>;
}
