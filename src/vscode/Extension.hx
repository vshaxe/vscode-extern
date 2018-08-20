package vscode;

/**
 * Represents an extension.
 *
 * To get an instance of an `Extension` use [getExtension](#extensions.getExtension).
 */
typedef Extension<T> = {
	/**
	 * The canonical extension identifier in the form of: `publisher.name`.
	 */
	var id(default, null):String;

	/**
	 * The absolute file path of the directory containing this extension.
	 */
	var extensionPath(default, null):String;

	/**
	 * `true` if the extension has been activated.
	 */
	var isActive(default, null):Bool;

	/**
	 * The parsed contents of the extension's package.json.
	 */
	var packageJSON(default, null):Any;

	/**
	 * The public API exported by this extension. It is an invalid action
	 * to access this field before this extension has been activated.
	 */
	var exports:T;

	/**
	 * Activates this extension and returns its public API.
	 *
	 * @return A promise that will resolve when this extension has been activated.
	 */
	function activate():Thenable<T>;
}
