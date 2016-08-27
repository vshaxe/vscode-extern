package vscode;

/**
 * Denotes a column in the VS Code window. Columns are
 * used to show editors side by side.
 */
@:enum abstract ViewColumn(Int) {
	var One = 1;
	var Two = 2;
	var Three = 3;
}
