package vscode;

typedef QuickDiffProvider = {
	/**
	 * Provide a [uri](#Uri) to the original resource of any given resource uri.
	 *
	 * @param uri The uri of the resource open in a text editor.
	 * @param token A cancellation token.
	 * @return A thenable that resolves to uri of the matching original resource.
	 */
	@:optional function provideOriginalResource(uri:Uri, token:CancellationToken):ProviderResult<Uri>;
}
