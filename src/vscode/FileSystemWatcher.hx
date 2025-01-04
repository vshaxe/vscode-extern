package vscode;

/**
 * A file system watcher notifies about changes to files and folders
 * on disk or from other {@link FileSystemProvider FileSystemProviders}.
 *
 * To get an instance of a `FileSystemWatcher` use
 * {@link workspace.createFileSystemWatcher createFileSystemWatcher}.
 */
@:jsRequire("vscode", "FileSystemWatcher")
extern class FileSystemWatcher extends Disposable {
	/**
	 * true if this file system watcher has been created such that
	 * it ignores creation file system events.
	 */
	var ignoreCreateEvents(default, null):Bool;

	/**
	 * true if this file system watcher has been created such that
	 * it ignores change file system events.
	 */
	var ignoreChangeEvents(default, null):Bool;

	/**
	 * true if this file system watcher has been created such that
	 * it ignores delete file system events.
	 */
	var ignoreDeleteEvents(default, null):Bool;

	/**
	 * An event which fires on file/folder creation.
	 */
	var onDidCreate(default, null):Event<Uri>;

	/**
	 * An event which fires on file/folder change.
	 */
	var onDidChange(default, null):Event<Uri>;

	/**
	 * An event which fires on file/folder deletion.
	 */
	var onDidDelete(default, null):Event<Uri>;
}
