package vscode;

/**
 * An event that is fired when files are going to be deleted.
 *
 * To make modifications to the workspace before the files are deleted,
 * call the {@link FileWillCreateEvent.waitUntil `waitUntil}-function with a
 * thenable that resolves to a {@link WorkspaceEdit workspace edit}.
 */
typedef FileWillDeleteEvent = {
	/**
	 * The files that are going to be deleted.
	 */
	var files(default, never):ReadOnlyArray<Uri>;

	/**
	 * Allows to pause the event and to apply a {@link WorkspaceEdit workspace edit}.
	 *
	 * *Note:* This function can only be called during event dispatch and not
	 * in an asynchronous manner:
	 *
	 * ```ts
	 * workspace.onWillCreateFiles(event => {
	 * 	// async, will *throw* an error
	 * 	setTimeout(() => event.waitUntil(promise));
	 *
	 * 	// sync, OK
	 * 	event.waitUntil(promise);
	 * })
	 * ```
	 *
	 * @param thenable A thenable that delays saving.
	 */
	@:overload(function(thenable:Thenable<Dynamic>):Void {})
	function waitUntil(thenable:Thenable<WorkspaceEdit>):Void;
}
