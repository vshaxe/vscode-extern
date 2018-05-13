package vscode;

import js.Promise;

/**
 * A webview displays html content, like an iframe.
 */
typedef Webview = {
    /**
     * Content settings for the webview.
     */
    var options(default,null):WebviewOptions;

    /**
     * Contents of the webview.
     *
     * Should be a complete html document.
     */
    var html:String;

    /**
     * Fired when the webview content posts a message.
     */
    var onDidReceiveMessage(default,null):Event<Any>;

    /**
     * Post a message to the webview content.
     *
     * Messages are only develivered if the webview is visible.
     *
     * @param message Body of the message.
     */
    function postMessage(message:Any):Thenable<Bool>;
}
