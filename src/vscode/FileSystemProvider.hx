package vscode;

import js.html.Uint8Array;

/**
 * The filesystem provider defines what the editor needs to read, write, discover,
 * and to manage files and folders. It allows extensions to serve files from remote places,
 * like ftp-servers, and to seamlessly integrate those into the editor.
 *
 * * *Note 1:* The filesystem provider API works with [uris](#Uri) and assumes hierarchical
 * paths, e.g. `foo:/my/path` is a child of `foo:/my/` and a parent of `foo:/my/path/deeper`.
 * * *Note 2:* There is an activation event `onFileSystem:<scheme>` that fires when a file
 * or folder is being accessed.
 * * *Note 3:* The word 'file' is often used to denote all [kinds](#FileType) of files, e.g.
 * folders, symbolic links, and regular files.
 */
typedef FileSystemProvider = {
	/**
	 * An event to signal that a resource has been created, changed, or deleted. This
	 * event should fire for resources that are being [watched](#FileSystemProvider.watch)
	 * by clients of this provider.
	 */
	var onDidChangeFile(default, null):Event<Array<FileChangeEvent>>;

	/**
	 * Subscribe to events in the file or folder denoted by `uri`.
	 *
	 * The editor will call this function for files and folders. In the latter case, the
	 * options differ from defaults, e.g. what files/folders to exclude from watching
	 * and if subfolders, sub-subfolder, etc. should be watched (`recursive`).
	 *
	 * @param uri The uri of the file to be watched.
	 * @param options Configures the watch.
	 * @returns A disposable that tells the provider to stop watching the `uri`.
	 */
	function watch(uri:Uri, options:{recursive:Bool, excludes:Array<String>}):Disposable;

	/**
	 * Retrieve metadata about a file.
	 *
	 * Note that the metadata for symbolic links should be the metadata of the file they refer to.
	 * Still, the [SymbolicLink](#FileType.SymbolicLink)-type must be used in addition to the actual type, e.g.
	 * `FileType.SymbolicLink | FileType.Directory`.
	 *
	 * @param uri The uri of the file to retrieve metadata about.
	 * @return The file metadata about the file.
	 * @throws [`FileNotFound`](#FileSystemError.FileNotFound) when `uri` doesn't exist.
	 */
	function stat(uri:Uri):EitherType<FileStat, Thenable<FileStat>>;
	// TODO: how to represent tuples?
	/**
	 * Retrieve all entries of a [directory](#FileType.Directory).
	 *
	 * @param uri The uri of the folder.
	 * @return An array of name/type-tuples or a thenable that resolves to such.
	 * @throws [`FileNotFound`](#FileSystemError.FileNotFound) when `uri` doesn't exist.
	 */
	// readDirectory(uri: Uri): [string, FileType][] | Thenable<[string, FileType][]>;

	/**
	 * Create a new directory (Note, that new files are created via `write`-calls).
	 *
	 * @param uri The uri of the new folder.
	 * @throws [`FileNotFound`](#FileSystemError.FileNotFound) when the parent of `uri` doesn't exist, e.g. no mkdirp-logic required.
	 * @throws [`FileExists`](#FileSystemError.FileExists) when `uri` already exists.
	 * @throws [`NoPermissions`](#FileSystemError.NoPermissions) when permissions aren't sufficient.
	 */
	function createDirectory(uri:Uri):EitherType<Void, Thenable<Void>>;

	/**
	 * Read the entire contents of a file.
	 *
	 * @param uri The uri of the file.
	 * @return An array of bytes or a thenable that resolves to such.
	 * @throws [`FileNotFound`](#FileSystemError.FileNotFound) when `uri` doesn't exist.
	 */
	function readFile(uri:Uri):EitherType<Uint8Array, Thenable<Uint8Array>>;

	/**
	 * Write data to a file, replacing its entire contents.
	 *
	 * @param uri The uri of the file.
	 * @param content The new content of the file.
	 * @param options Defines if missing files should or must be created.
	 * @throws [`FileNotFound`](#FileSystemError.FileNotFound) when `uri` doesn't exist and `create` is not set.
	 * @throws [`FileNotFound`](#FileSystemError.FileNotFound) when the parent of `uri` doesn't exist and `create` is set, e.g. no mkdirp-logic required.
	 * @throws [`FileExists`](#FileSystemError.FileExists) when `uri` already exists, `create` is set but `overwrite` is not set.
	 * @throws [`NoPermissions`](#FileSystemError.NoPermissions) when permissions aren't sufficient.
	 */
	function writeFile(uri:Uri, content:Uint8Array, options:{create:Bool, overwrite:Bool}):EitherType<Void, Thenable<Void>>;

	/**
	 * Delete a file.
	 *
	 * @param uri The resource that is to be deleted.
	 * @param options Defines if deletion of folders is recursive.
	 * @throws [`FileNotFound`](#FileSystemError.FileNotFound) when `uri` doesn't exist.
	 * @throws [`NoPermissions`](#FileSystemError.NoPermissions) when permissions aren't sufficient.
	 */
	function delete(uri:Uri, options:{recursive:Bool}):EitherType<Void, Thenable<Void>>;

	/**
	 * Rename a file or folder.
	 *
	 * @param oldUri The existing file.
	 * @param newUri The new location.
	 * @param options Defines if existing files should be overwritten.
	 * @throws [`FileNotFound`](#FileSystemError.FileNotFound) when `oldUri` doesn't exist.
	 * @throws [`FileNotFound`](#FileSystemError.FileNotFound) when parent of `newUri` doesn't exist, e.g. no mkdirp-logic required.
	 * @throws [`FileExists`](#FileSystemError.FileExists) when `newUri` exists and when the `overwrite` option is not `true`.
	 * @throws [`NoPermissions`](#FileSystemError.NoPermissions) when permissions aren't sufficient.
	 */
	function rename(oldUri:Uri, newUri:Uri, options:{overwrite:Bool}):EitherType<Void, Thenable<Void>>;

	/**
	 * Copy files or folders. Implementing this function is optional but it will speedup
	 * the copy operation.
	 *
	 * @param source The existing file.
	 * @param destination The destination location.
	 * @param options Defines if existing files should be overwriten.
	 * @throws [`FileNotFound`](#FileSystemError.FileNotFound) when `source` doesn't exist.
	 * @throws [`FileNotFound`](#FileSystemError.FileNotFound) when parent of `destination` doesn't exist, e.g. no mkdirp-logic required.
	 * @throws [`FileExists`](#FileSystemError.FileExists) when `destination` exists and when the `overwrite` option is not `true`.
	 * @throws [`NoPermissions`](#FileSystemError.NoPermissions) when permissions aren't sufficient.
	 */
	@:optional var copy:Uri->Uri->{overwrite:Bool}->EitherType<Void, Thenable<Void>>;
	// TODO: use Haxe 4 function types whenever we drop Haxe 3.4 support for the externs (lets us have argument names)
	// copy?(source: Uri, destination: Uri, options: { overwrite: boolean }): void | Thenable<void>;
}
