package vscode;

import js.Promise.Thenable;

/**
 * Represents an extension.
 *
 * To get an instance of an `Extension` use [getExtension](#extensions.getExtension).
 */
typedef Extension<T> = {
    /**
     * The canonical extension identifier in the form of: `publisher.name`.
     *
     * @readonly
     */
    var id(default,null):String;

    /**
     * The absolute file path of the directory containing this extension.
     *
     * @readonly
     */
    var extensionPath(default,null):String;

    /**
     * `true` if the extension has been activated.
     *
     * @readonly
     */
    var isActive(default,null):Bool;

    /**
     * The parsed contents of the extension's package.json.
     *
     * @readonly
     */
    var packageJSON(default,null):Any;

    /**
     * The public API exported by this extension. It is an invalid action
     * to access this field before this extension has been activated.
     *
     * @readonly
     */
    var exports:T;

    /**
     * Activates this extension and returns its public API.
     *
     * @return A promise that will resolve when this extension has been activated.
     */
    function activate():Thenable<T>;
}
