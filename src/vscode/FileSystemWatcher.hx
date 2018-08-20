package vscode;

/**
 * A file system watcher notifies about changes to files and folders
 * on disk.
 *
 * To get an instance of a `FileSystemWatcher` use
 * [createFileSystemWatcher](#workspace.createFileSystemWatcher).
 */
@:jsRequire("vscode", "FileSystemWatcher")
extern class FileSystemWatcher extends Disposable {
	/**
	 * true if this file system watcher has been created such that
	 * it ignores creation file system events.
	 */
	var ignoreCreateEvents:Bool;

	/**
	 * true if this file system watcher has been created such that
	 * it ignores change file system events.
	 */
	var ignoreChangeEvents:Bool;

	/**
	 * true if this file system watcher has been created such that
	 * it ignores delete file system events.
	 */
	var ignoreDeleteEvents:Bool;

	/**
	 * An event which fires on file/folder creation.
	 */
	var onDidCreate:Event<Uri>;

	/**
	 * An event which fires on file/folder change.
	 */
	var onDidChange:Event<Uri>;

	/**
	 * An event which fires on file/folder deletion.
	 */
	var onDidDelete:Event<Uri>;
}
