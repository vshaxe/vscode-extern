package vscode;

/**
 * Information about where a symbol is defined.
 *
 * Provides additional metadata over normal [location](#Location) definitions, including the range of
 * the defining symbol
 */
typedef DefinitionLink = {
	/**
	 * Span of the symbol being defined in the source file.
	 *
	 * Used as the underlined span for mouse definition hover. Defaults to the word range at
	 * the definition position.
	 */
	@:optional var originSelectionRange:Range;

	/**
	 * The resource identifier of the definition.
	 */
	var targetUri:Uri;

	/**
	 * The full range of the definition.
	 *
	 * For a class definition for example, this would be the entire body of the class definition.
	 */
	var targetRange:Range;

	/**
	 * The span of the symbol definition.
	 *
	 * For a class definition, this would be the class name itself in the class definition.
	 */
	@:optional var targetSelectionRange:Range;
}
