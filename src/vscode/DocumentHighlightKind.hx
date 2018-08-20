package vscode;

/**
 * A document highlight kind.
 */
@:jsRequire("vscode", "DocumentHighlightKind")
@:enum extern abstract DocumentHighlightKind(Int) {
	/**
	 * A textual occurrence.
	 */
	var Text;

	/**
	 * Read-access of a symbol, like reading a variable.
	 */
	var Read;

	/**
	 * Write-access of a symbol, like writing to a variable.
	 */
	var Write;
}
