package vscode;

/**
 * The document color provider defines the contract between extensions and feature of
 * picking and modifying colors in the editor.
 */
typedef DocumentColorProvider = {
	/**
	 * Provide colors for the given document.
	 *
	 * @param document The document in which the command was invoked.
	 * @param token A cancellation token.
	 * @return An array of [color information](#ColorInformation) or a thenable that resolves to such. The lack of a result
	 * can be signaled by returning `undefined`, `null`, or an empty array.
	 */
	function provideDocumentColors(document:TextDocument, token:CancellationToken):ProviderResult<Array<ColorInformation>>;

	/**
	 * Provide [representations](#ColorPresentation) for a color.
	 *
	 * @param color The color to show and insert.
	 * @param context A context object with additional information
	 * @param token A cancellation token.
	 * @return An array of color presentations or a thenable that resolves to such. The lack of a result
	 * can be signaled by returning `undefined`, `null`, or an empty array.
	 */
	function provideColorPresentations(color:Color, context:{document:TextDocument, range:Range}, token:CancellationToken):ProviderResult<Array<ColorPresentation>>;
}
