package vscode;

import js.lib.Uint8Array;

/**
 * A file associated with a {@linkcode DataTransferItem}.
 *
 * Instances of this type can only be created by the editor and not by extensions.
 */
typedef DataTransferFile = {
	/**
	 * The name of the file.
	 */
	var name(default, null):String;

	/**
	 * The full file path of the file.
	 *
	 * May be `undefined` on web.
	 */
	var ?uri(default, null):Uri;

	/**
	 * The full file contents of the file.
	 */
	function data():Thenable<Uint8Array>;
}
