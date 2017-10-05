package vscode;

/**
 * Denotes a column in the editor window. Columns are
 * used to show editors side by side.
 */
@:jsRequire("vscode", "ViewColumn")
@:enum extern abstract ViewColumn(Int) {
    /**
     * A *symbolic* editor column representing the currently
     * active column. This value can be used when opening editors, but the
     * *resolved* [viewColumn](#TextEditor.viewColumn)-value of editors will always
     * be `One`, `Two`, `Three`, or `undefined` but never `Active`.
     */
    var Active;

    /**
     * The left most editor column.
     */
    var One;

    /**
     * The center editor column.
     */
    var Two;

    /**
     * The right most editor column.
     */
    var Three;
}
