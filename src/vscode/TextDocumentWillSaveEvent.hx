package vscode;

/**
 * An event that is fired when a {@link TextDocument document} will be saved.
 *
 * To make modifications to the document before it is being saved, call the
 * {@linkcode TextDocumentWillSaveEvent.waitUntil waitUntil}-function with a thenable
 * that resolves to an array of {@link TextEdit text edits}.
 */
@:jsRequire("vscode", "TextDocumentWillSaveEvent")
extern class TextDocumentWillSaveEvent {
	/**
	 * The document that will be saved.
	 */
	var document(default, null):TextDocument;

	/**
	 * The reason why save was triggered.
	 */
	var reason(default, null):TextDocumentSaveReason;

	/**
	 * Allows to pause the event loop and to apply {@link TextEdit pre-save-edits}.
	 * Edits of subsequent calls to this function will be applied in order. The
	 * edits will be *ignored* if concurrent modifications of the document happened.
	 *
	 * *Note:* This function can only be called during event dispatch and not
	 * in an asynchronous manner:
	 *
	 * ```ts
	 * workspace.onWillSaveTextDocument(event => {
	 * 	// async, will *throw* an error
	 * 	setTimeout(() => event.waitUntil(promise));
	 *
	 * 	// sync, OK
	 * 	event.waitUntil(promise);
	 * })
	 * ```
	 *
	 * @param thenable A thenable that resolves to {@link TextEdit pre-save-edits}.
	 */
	overload function waitUntil(thenable:Thenable<ReadOnlyArray<TextEdit>>):Void;

	/**
	 * Allows to pause the event loop until the provided thenable resolved.
	 *
	 * *Note:* This function can only be called during event dispatch.
	 *
	 * @param thenable A thenable that delays saving.
	 */
	overload function waitUntil(thenable:Thenable<Dynamic>):Void;
}
