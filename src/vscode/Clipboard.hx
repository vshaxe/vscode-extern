package vscode;

/**
 * The clipboard provides read and write access to the system's clipboard.
 */
typedef Clipboard = {
	/**
	 * Read the current clipboard contents as text.
	 * @returns A thenable that resolves to a string.
	 */
	function readText():Thenable<String>;

	/**
	 * Writes text into the clipboard.
	 * @returns A thenable that resolves when writing happened.
	 */
	function writeText(value:String):Thenable<Void>;
}
