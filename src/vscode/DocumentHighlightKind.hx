package vscode;

/**
 * A document highlight kind.
 */
@:enum abstract DocumentHighlightKind(Int) {
	/**
	 * A textual occurrence.
	 */
	var Text = 0;

	/**
	 * Read-access of a symbol, like reading a variable.
	 */
	var Read = 1;

	/**
	 * Write-access of a symbol, like writing to a variable.
	 */
	var Write = 2;
}
