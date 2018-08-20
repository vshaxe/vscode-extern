package vscode;

/**
 * The `FileStat`-type represents metadata about a file
 */
typedef FileStat = {
	/**
	 * The type of the file, e.g. is a regular file, a directory, or symbolic link
	 * to a file.
	 */
	var type:FileType;

	/**
	 * The creation timestamp in milliseconds elapsed since January 1, 1970 00:00:00 UTC.
	 */
	var ctime:Int;

	/**
	 * The modification timestamp in milliseconds elapsed since January 1, 1970 00:00:00 UTC.
	 */
	var mtime:Int;

	/**
	 * The size in bytes.
	 */
	var size:Int;
}
