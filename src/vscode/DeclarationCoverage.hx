package vscode;

/**
 * Contains coverage information for a declaration. Depending on the reporter
 * and language, this may be types such as functions, methods, or namespaces.
 */
@:jsRequire("vscode", "DeclarationCoverage")
extern class DeclarationCoverage {
	/**
	 * Name of the declaration.
	 */
	var name:String;

	/**
	 * The number of times this declaration was executed, or a boolean
	 * indicating whether it was executed if the exact count is unknown. If
	 * zero or false, the declaration will be marked as un-covered.
	 */
	var executed:EitherType<Int, Bool>;

	/**
	 * Declaration location.
	 */
	var location:EitherType<Position, Range>;

	/**
	 * @param executed The number of times this declaration was executed, or a
	 * boolean indicating  whether it was executed if the exact count is
	 * unknown. If zero or false, the declaration will be marked as un-covered.
	 * @param location The declaration position.
	 */
	function new(name:String, executed:EitherType<Int, Bool>, location:EitherType<Position, Range>);
}
