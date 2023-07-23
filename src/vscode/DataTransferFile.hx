package vscode;

import js.lib.Uint8Array;

/**
 * A file associated with a {@linkcode DataTransferItem}.
 */
typedef DataTransferFile = {
	/**
	 * The name of the file.
	 */
	var name(default, never):String;

	/**
	 * The full file path of the file.
	 *
	 * May be `undefined` on web.
	 */
	var ?uri:Uri;

	/**
	 * The full file contents of the file.
	 */
	function data():Thenable<Uint8Array>;
}
