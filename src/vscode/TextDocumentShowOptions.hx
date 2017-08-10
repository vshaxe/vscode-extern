package vscode;

/**
 * Represents options to configure the behavior of showing a [document](#TextDocument) in an [editor](#TextEditor).
 */
typedef TextDocumentShowOptions = {
    /**
     * An optional view column in which the [editor](#TextEditor) should be shown.
     * The default is the [one](#ViewColumn.One), other values are adjusted to
     * be __Min(column, columnCount + 1)__.
     */
    @:optional var viewColumn:ViewColumn;

    /**
     * An optional flag that when `true` will stop the [editor](#TextEditor) from taking focus.
     */
    @:optional var preserveFocus:Bool;

    /**
     * An optional flag that controls if an [editor](#TextEditor)-tab will be replaced
     * with the next editor or if it will be kept.
     */
    @:optional var preview:Bool;

    /**
     * An optional selection to apply for the document in the [editor](#TextEditor).
     */
    @:optional var selection:Range;
}
