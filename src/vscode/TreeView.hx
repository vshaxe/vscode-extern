package vscode;

/**
 * Represents a Tree view
 */
typedef TreeView<T> = {
    /**
     * Dispose this object.
     */
    function dispose():Void;

    /**
     * Event that is fired when an element is expanded
     */
    var onDidExpandElement(default,null):Event<TreeViewExpansionEvent<T>>;

    /**
     * Event that is fired when an element is collapsed
     */
    var onDidCollapseElement(default,null):Event<TreeViewExpansionEvent<T>>;

    /**
     * Currently selected elements.
     */
    var selection(default,null):ReadonlyArray<T>;

    /**
     * Reveal an element. By default revealed element is selected.
     *
     * In order to not to select, set the option `select` to `false`.
     *
     * **NOTE:** [TreeDataProvider](#TreeDataProvider) is required to implement [getParent](#TreeDataProvider.getParent) method to access this API.
     */
    function reveal(element:T, ?options:{?select:Bool}):Thenable<Void>;
}