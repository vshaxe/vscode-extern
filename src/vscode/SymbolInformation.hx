package vscode;

/**
 * Represents information about programming constructs like variables, classes,
 * interfaces etc.
 */
@:jsRequire("vscode", "SymbolInformation")
extern class SymbolInformation {
	/**
	 * The name of this symbol.
	 */
	var name:String;

	/**
	 * The name of the symbol containing this symbol.
	 */
	var containerName:String;

	/**
	 * The kind of this symbol.
	 */
	var kind:SymbolKind;

	/**
	 * The location of this symbol.
	 */
	var location:Location;

	/**
	 * Creates a new symbol information object.
	 *
	 * @param name The name of the symbol.
	 * @param kind The kind of the symbol.
	 * @param containerName The name of the symbol containing the symbol.
	 * @param location The location of the symbol.
	 */
	@:overload(function(name:String, kind:SymbolKind, range:Range, ?uri:Uri, ?containerName:String):Void {})
	function new(name:String, kind:SymbolKind, containerName:String, location:Location);
}
