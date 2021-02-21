package vscode;

/**
 * An extension context is a collection of utilities private to an
 * extension.
 *
 * An instance of an `ExtensionContext` is provided as the first
 * parameter to the `activate`-call of an extension.
 */
typedef ExtensionContext = {
	/**
	 * An array to which disposables can be added. When this
	 * extension is deactivated the disposables will be disposed.
	 */
	var subscriptions(default, null):Array<{function dispose():Void;}>;

	/**
	 * A memento object that stores state in the context
	 * of the currently opened [workspace](#workspace.workspaceFolders).
	 */
	var workspaceState(default, null):Memento & {

		/**
		 * Set the keys whose values should be synchronized across devices when synchronizing user-data
		 * like configuration, extensions, and mementos.
		 *
		 * Note that this function defines the whole set of keys whose values are synchronized:
		 *  - calling it with an empty array stops synchronization for this memento
		 *  - calling it with a non-empty array replaces all keys whose values are synchronized
		 *
		 * For any given set of keys this function needs to be called only once but there is no harm in
		 * repeatedly calling it.
		 *
		 * @param keys The set of keys whose values are synced.
		 */
		function setKeysForSync(keys:Array<String>):Void;
	};

	/**
	 * A memento object that stores state independent
	 * of the current opened [workspace](#workspace.workspaceFolders).
	 */
	var globalState(default, null):Memento;

	/**
	 * A storage utility for secrets.
	 */
	var secrets(default, null):SecretStorage;

	/**
	 * The uri of the directory containing the extension.
	 */
	var extensionUri(default, null):String;

	/**
	 * The absolute file path of the directory containing the extension.
	 */
	var extensionPath(default, null):String;

	/**
	 * Gets the extension's environment variable collection for this workspace, enabling changes
	 * to be applied to terminal environment variables.
	 */
	var environmentVariableCollection(default, null):EnvironmentVariableCollection;

	/**
	 * Get the absolute path of a resource contained in the extension.
	 *
	 * *Note* that an absolute uri can be constructed via [`Uri.joinPath`](#Uri.joinPath) and
	 * [`extensionUri`](#ExtensionContext.extensionUri), e.g. `vscode.Uri.joinPath(context.extensionUri, relativePath);`
	 *
	 * @param relativePath A relative path to a resource contained in the extension.
	 * @return The absolute path of the resource.
	 */
	function asAbsolutePath(relativePath:String):String;

	/**
	 * The uri of a workspace specific directory in which the extension
	 * can store private state. The directory might not exist and creation is
	 * up to the extension. However, the parent directory is guaranteed to be existent.
	 * The value is `undefined` when no workspace nor folder has been opened.
	 *
	 * Use [`workspaceState`](#ExtensionContext.workspaceState) or
	 * [`globalState`](#ExtensionContext.globalState) to store key value data.
	 *
	 * @see [`workspace.fs`](#FileSystem) for how to read and write files and folders from
	 *  an uri.
	 */
	var storageUri(default, null):Null<Uri>;

	/**
	 * An absolute file path of a workspace specific directory in which the extension
	 * can store private state. The directory might not exist on disk and creation is
	 * up to the extension. However, the parent directory is guaranteed to be existent.
	 *
	 * Use [`workspaceState`](#ExtensionContext.workspaceState) or
	 * [`globalState`](#ExtensionContext.globalState) to store key value data.
	 */
	@:deprecated("Use [storageUri](#ExtensionContext.storageUri) instead.")
	var storagePath(default, null):Null<String>;

	/**
	 * The uri of a directory in which the extension can store global state.
	 * The directory might not exist on disk and creation is
	 * up to the extension. However, the parent directory is guaranteed to be existent.
	 *
	 * Use [`globalState`](#ExtensionContext.globalState) to store key value data.
	 *
	 * @see [`workspace.fs`](#FileSystem) for how to read and write files and folders from
	 *  an uri.
	 */
	var globalStorageUri(default, null):Uri;

	/**
	 * An absolute file path in which the extension can store global state.
	 * The directory might not exist on disk and creation is
	 * up to the extension. However, the parent directory is guaranteed to be existent.
	 *
	 * Use [`globalState`](#ExtensionContext.globalState) to store key value data.
	 */
	@:deprecated("Use [globalStorageUri](#ExtensionContext.globalStorageUri) instead.")
	var globalStoragePath(default, null):String;

	/**
	 * The uri of a directory in which the extension can create log files.
	 * The directory might not exist on disk and creation is up to the extension. However,
	 * the parent directory is guaranteed to be existent.
	 *
	 * @see [`workspace.fs`](#FileSystem) for how to read and write files and folders from
	 *  an uri.
	 */
	var logUri(default, null):Uri;

	/**
	 * An absolute file path of a directory in which the extension can create log files.
	 * The directory might not exist on disk and creation is up to the extension. However,
	 * the parent directory is guaranteed to be existent.
	 */
	@:deprecated("Use [logUri](#ExtensionContext.logUri) instead.")
	var logPath(default, null):String;

	/**
	 * The mode the extension is running in. This is specific to the current
	 * extension. One extension may be in `ExtensionMode.Development` while
	 * other extensions in the host run in `ExtensionMode.Release`.
	 */
	var extensionMode(default, null):ExtensionMode;
}
