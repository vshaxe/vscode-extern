package vscode;

/**
 * A document filter denotes a document by different properties like
 * the [language](#TextDocument.languageId), the [scheme](#Uri.scheme) of
 * its resource, or a glob-pattern that is applied to the [path](#TextDocument.fileName).
 *
 * @example <caption>A language filter that applies to typescript files on disk</caption>
 * { language: 'typescript', scheme: 'file' }
 *
 * @example <caption>A language filter that applies to all package.json paths</caption>
 * { language: 'json', scheme: 'untitled', pattern: '**​/package.json' }
 */
typedef DocumentFilter = {
	/**
	 * A language id, like `typescript`.
	 */
	final ?language:String;

	/**
	 * A Uri [scheme](#Uri.scheme), like `file` or `untitled`.
	 */
	final ?scheme:String;

	/**
	 * A [glob pattern](#GlobPattern) that is matched on the absolute path of the document. Use a [relative pattern](#RelativePattern)
	 * to filter documents to a [workspace folder](#WorkspaceFolder).
	 */
	final ?pattern:GlobPattern;
}
