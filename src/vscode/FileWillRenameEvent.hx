package vscode;

/**
 * An event that is fired when files are going to be renamed.
 *
 * To make modifications to the workspace before the files are renamed,
 * call the {@link FileWillCreateEvent.waitUntil `waitUntil`}-function with a
 * thenable that resolves to a {@link WorkspaceEdit workspace edit}.
 */
@:jsRequire("vscode", "FileWillRenameEvent")
extern class FileWillRenameEvent {
	/**
	 * A cancellation token.
	 */
	var token(default, null):CancellationToken;

	/**
	 * The files that are going to be renamed.
	 */
	var files(default, never):ReadOnlyArray<{
		/**
		 * The old uri of a file.
		 */
		final oldUri:Uri;
		/**
		 * The new uri of a file.
		 */
		final newUri:Uri;
	}>;

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
	overload function waitUntil(thenable:Thenable<WorkspaceEdit>):Void;

	/**
	 * Allows to pause the event until the provided thenable resolves.
	 *
	 * *Note:* This function can only be called during event dispatch.
	 *
	 * @param thenable A thenable that delays saving.
	 */
	overload function waitUntil(thenable:Thenable<Dynamic>):Void;
}
