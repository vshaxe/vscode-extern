package vscode;

/**
 * A panel that contains a webview.
 */
typedef WebviewPanel = {
    /**
     * Identifies the type of the webview panel, such as `'markdown.preview'`.
     */
    var viewType(default,null):String;

    /**
     * Title of the panel shown in UI.
     */
    var title:String;

    /**
     * Webview belonging to the panel.
     */
    var webview(default,null):Webview;

    /**
     * Content settings for the webview panel.
     */
    var options(default,null):WebviewPanelOptions;

    /**
     * Editor position of the panel. This property is only set if the webview is in
     * one of the three editor view columns.
     */
    @:deprecated @:optional var viewColumn(default,null):ViewColumn;

    /**
     * Is the panel currently visible?
     */
    var visible(default,null):Bool;

    /**
     * Fired when the panel's view state changes.
     */
    var onDidChangeViewState(default,null):Event<WebviewPanelOnDidChangeViewStateEvent>;

    /**
     * Fired when the panel is disposed.
     *
     * This may be because the user closed the panel or because `.dispose()` was
     * called on it.
     *
     * Trying to use the panel after it has been disposed throws an exception.
     */
    var onDidDispose(default,null):Event<Void>;

    /**
     * Show the webview panel in a given column.
     *
     * A webview panel may only show in a single column at a time. If it is already showing, this
     * method moves it to a new column.
     *
     * @param viewColumn View column to show the panel in. Shows in the current `viewColumn` if undefined.
     */
    function reveal(?viewColumn:ViewColumn):Void;

    /**
     * Dispose of the webview panel.
     *
     * This closes the panel if it showing and disposes of the resources owned by the webview.
     * Webview panels are also disposed when the user closes the webview panel. Both cases
     * fire the `onDispose` event.
     */
    function dispose():Any;
}
