package vscode;

import js.Promise.Thenable;

/**
 * An event that is fired when a [document](#TextDocument) will be saved.
 *
 * To make modifications to the document before it is being saved, call the
 * [`waitUntil`](#TextDocumentWillSaveEvent.waitUntil)-function with a thenable
 * that resolves to an array of [text edits](#TextEdit).
 */
typedef TextDocumentWillSaveEvent = {
    /**
     * The document that will be saved.
     */
    var document:TextDocument;

    /**
     * The reason why save was triggered.
     */
    var reason:TextDocumentSaveReason;

    /**
     * Allows to pause the event loop and to apply [pre-save-edits](#TextEdit).
     * Edits of subsequent calls to this function will be applied in order. The
     * edits will be *ignored* if concurrent modifications of the document happened.
     *
     * *Note:* This function can only be called during event dispatch and not
     * in an asynchronous manner:
     *
     * ```ts
     * workspace.onWillSaveTextDocument(event => {
        // async, will *throw* an error
        setTimeout(() => event.waitUntil(promise));
        // sync, OK
     *  event.waitUntil(promise);
     * })
     * ```
     *
     * @param thenable A thenable that resolves to [pre-save-edits](#TextEdit).
     */
    @:overload(function(thenable:Thenable<Any>):Void {})
    function waitUntil(thenable:Thenable<Array<TextEdit>>):Void;
}
