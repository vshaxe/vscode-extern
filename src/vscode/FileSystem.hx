package vscode;

import js.lib.Uint8Array;

/**
 * The file system interface exposes the editor's built-in and contributed
 * {@link FileSystemProvider file system providers}. It allows extensions to work
 * with files from the local disk as well as files from remote places, like the
 * remote extension host or ftp-servers.
 *
 * *Note* that an instance of this interface is available as {@linkcode workspace.fs}.
 */
typedef FileSystem = {
	/**
	 * Retrieve metadata about a file.
	 *
	 * @param uri The uri of the file to retrieve metadata about.
	 * @return The file metadata about the file.
	 */
	function stat(uri:Uri):Thenable<FileStat>;

	/**
	 * Retrieve all entries of a {@link FileType.Directory directory}.
	 *
	 * @param uri The uri of the folder.
	 * @return An array of name/type-tuples or a thenable that resolves to such.
	 */
	function readDirectory(uri:Uri):Thenable<Array<FileSystemReadDirectoryTuple>>;

	/**
	 * Create a new directory (Note, that new files are created via `write`-calls).
	 *
	 * *Note* that missing directories are created automatically, e.g this call has
	 * `mkdirp` semantics.
	 *
	 * @param uri The uri of the new folder.
	 */
	function createDirectory(uri:Uri):Thenable<Void>;

	/**
	 * Read the entire contents of a file.
	 *
	 * @param uri The uri of the file.
	 * @return An array of bytes or a thenable that resolves to such.
	 */
	function readFile(uri:Uri):Thenable<Uint8Array>;

	/**
	 * Write data to a file, replacing its entire contents.
	 *
	 * @param uri The uri of the file.
	 * @param content The new content of the file.
	 */
	function writeFile(uri:Uri, content:Uint8Array):Thenable<Void>;

	/**
	 * Delete a file.
	 *
	 * @param uri The resource that is to be deleted.
	 * @param options Defines if trash can should be used and if deletion of folders is recursive
	 */
	function delete(uri:Uri, ?options:{?recursive:Bool, ?useTrash:Bool}):Thenable<Void>;

	/**
	 * Rename a file or folder.
	 *
	 * @param oldUri The existing file.
	 * @param newUri The new location.
	 * @param options Defines if existing files should be overwritten.
	 */
	function rename(source:Uri, target:Uri, ?options:{?overwrite:Bool}):Thenable<Void>;

	/**
	 * Copy files or folders.
	 *
	 * @param source The existing file.
	 * @param destination The destination location.
	 * @param options Defines if existing files should be overwritten.
	 */
	function copy(source:Uri, target:Uri, ?options:{?overwrite:Bool}):Thenable<Void>;

	/**
	 * Check if a given file system supports writing files.
	 *
	 * Keep in mind that just because a file system supports writing, that does
	 * not mean that writes will always succeed. There may be permissions issues
	 * or other errors that prevent writing a file.
	 *
	 * @param scheme The scheme of the filesystem, for example `file` or `git`.
	 *
	 * @return `true` if the file system supports writing, `false` if it does not
	 * support writing (i.e. it is readonly), and `undefined` if the editor does not
	 * know about the filesystem.
	 */
	function isWritableFileSystem(scheme:String):Null<Bool>;
}

@:dce
abstract FileSystemReadDirectoryTuple(Array<Dynamic>) {
	public var name(get, never):String;
	public var type(get, never):FileType;

	public extern inline function new(name:String, type:FileType) {
		this = [name, type];
	}

	extern inline function get_name():String
		return this[0];

	extern inline function get_type():FileType
		return this[1];
}
