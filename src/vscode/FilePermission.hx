package vscode;

@:jsRequire("vscode", "FilePermission")
extern enum abstract FilePermission(Int) {
	/**
	 * The file is readonly.
	 *
	 * *Note:* All `FileStat` from a `FileSystemProvider` that is registered with
	 * the option `isReadonly: true` will be implicitly handled as if `FilePermission.Readonly`
	 * is set. As a consequence, it is not possible to have a readonly file system provider
	 * registered where some `FileStat` are not readonly.
	 */
	final Readonly = 1;
}
