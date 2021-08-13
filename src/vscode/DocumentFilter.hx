package vscode;

/**
 * A document filter denotes a document by different properties like
 * the {@link TextDocument.languageId language}, the {@link Uri.scheme scheme} of
 * its resource, or a glob-pattern that is applied to the {@link TextDocument.fileName path}.
 *
 * @example <caption>A language filter that applies to typescript files on disk</caption>
 * { language: 'typescript', scheme: 'file' }
 *
 * @example <caption>A language filter that applies to all package.json paths</caption>
 * { language: 'json', pattern: '**​/package.json' }
 */
typedef DocumentFilter = {
	/**
	 * A language id, like `typescript`.
	 */
	final ?language:String;

	/**
	 * A Uri {@link Uri.scheme scheme}, like `file` or `untitled`.
	 */
	final ?scheme:String;

	/**
	 * A {@link GlobPattern glob pattern} that is matched on the absolute path of the document. Use a {@link RelativePattern relative pattern}
	 * to filter documents to a {@link WorkspaceFolder workspace folder}.
	 */
	final ?pattern:GlobPattern;
}
