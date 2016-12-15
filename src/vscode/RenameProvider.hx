package vscode;

/**
 * The rename provider interface defines the contract between extensions and
 * the [rename](https://code.visualstudio.com/docs/editor/editingevolved#_rename-symbol)-feature.
 */
typedef RenameProvider = {
    /**
     * Provide an edit that describes changes that have to be made to one
     * or many resources to rename a symbol to a different name.
     *
     * @param document The document in which the command was invoked.
     * @param position The position at which the command was invoked.
     * @param newName The new name of the symbol. If the given name is not valid, the provider must return a rejected promise.
     * @param token A cancellation token.
     * @return A workspace edit or a thenable that resolves to such. The lack of a result can be
     * signaled by returning `undefined` or `null`.
     */
    function provideRenameEdits(document:TextDocument, position:Position, newName:String, token:CancellationToken):ProviderResult<WorkspaceEdit>;
}
