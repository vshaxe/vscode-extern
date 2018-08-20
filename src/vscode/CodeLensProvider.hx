package vscode;

/**
 * A code lens provider adds [commands](#Command) to source text. The commands will be shown
 * as dedicated horizontal lines in between the source text.
 */
typedef CodeLensProvider = {
	/**
	 * An optional event to signal that the code lenses from this provider have changed.
	 */
	@:optional var onDidChangeCodeLenses:Event<Void>;

	/**
	 * Compute a list of [lenses](#CodeLens). This call should return as fast as possible and if
	 * computing the commands is expensive implementors should only return code lens objects with the
	 * range set and implement [resolve](#CodeLensProvider.resolveCodeLens).
	 *
	 * @param document The document in which the command was invoked.
	 * @param token A cancellation token.
	 * @return An array of code lenses or a thenable that resolves to such. The lack of a result can be
	 * signaled by returning `undefined`, `null`, or an empty array.
	 */
	function provideCodeLenses(document:TextDocument, token:CancellationToken):ProviderResult<Array<CodeLens>>;

	/**
	 * This function will be called for each visible code lens, usually when scrolling and after
	 * calls to [compute](#CodeLensProvider.provideCodeLenses)-lenses.
	 *
	 * @param codeLens code lens that must be resolved.
	 * @param token A cancellation token.
	 * @return The given, resolved code lens or thenable that resolves to such.
	 */
	@:optional // TODO: will this work?
	function resolveCodeLens(codeLens:CodeLens, token:CancellationToken):ProviderResult<CodeLens>;
}
