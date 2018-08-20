package vscode;

/**
 * A text document content provider allows to add readonly documents
 * to the editor, such as source from a dll or generated html from md.
 *
 * Content providers are [registered](#workspace.registerTextDocumentContentProvider)
 * for a [uri-scheme](#Uri.scheme). When a uri with that scheme is to
 * be [loaded](#workspace.openTextDocument) the content provider is
 * asked.
 */
typedef TextDocumentContentProvider = {
	/**
	 * An event to signal a resource has changed.
	 */
	@:optional var onDidChange(default, never):Event<Uri>;

	/**
	 * Provide textual content for a given uri.
	 *
	 * The editor will use the returned string-content to create a readonly
	 * [document](#TextDocument). Resources allocated should be released when
	 * the corresponding document has been [closed](#workspace.onDidCloseTextDocument).
	 *
	 * @param uri An uri which scheme matches the scheme this provider was [registered](#workspace.registerTextDocumentContentProvider) for.
	 * @param token A cancellation token.
	 * @return A string or a thenable that resolves to such.
	 */
	function provideTextDocumentContent(uri:Uri, token:CancellationToken):ProviderResult<String>;
}
