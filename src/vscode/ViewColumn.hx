package vscode;

/**
 * Denotes a column in the VS Code window. Columns are
 * used to show editors side by side.
 */
@:jsRequire("vscode", "ViewColumn")
@:enum extern abstract ViewColumn(Int) {
    var One;
    var Two;
    var Three;
}
