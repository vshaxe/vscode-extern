package vscode;

/**
 * Event triggered by extensions to signal to the editor that an edit has occurred on an {@linkcode CustomDocument}.
 *
 * @see {@linkcode CustomEditorProvider.onDidChangeCustomDocument}.
 */
typedef CustomDocumentEditEvent<T:CustomDocument> = {
	/**
	 * The document that the edit is for.
	 */
	final document:T;

	/**
	 * Undo the edit operation.
	 *
	 * This is invoked by the editor when the user undoes this edit. To implement `undo`, your
	 * extension should restore the document and editor to the state they were in just before this
	 * edit was added to the editor's internal edit stack by `onDidChangeCustomDocument`.
	 */
	function undo():EitherType<Thenable<Void>, Void>;

	/**
	 * Redo the edit operation.
	 *
	 * This is invoked by the editor when the user redoes this edit. To implement `redo`, your
	 * extension should restore the document and editor to the state they were in just after this
	 * edit was added to the editor's internal edit stack by `onDidChangeCustomDocument`.
	 */
	function redo():EitherType<Thenable<Void>, Void>;

	/**
	 * Display name describing the edit.
	 *
	 * This will be shown to users in the UI for undo/redo operations.
	 */
	final ?label:String;
}
