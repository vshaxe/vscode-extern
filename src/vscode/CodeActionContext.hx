package vscode;

/**
 * Contains additional diagnostic information about the context in which
 * a [code action](#CodeActionProvider.provideCodeActions) is run.
 */
typedef CodeActionContext = {
    /**
     * An array of diagnostics.
     */
    var diagnostics(default,null):Array<Diagnostic>;
}
