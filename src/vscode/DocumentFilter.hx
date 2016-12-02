package vscode;

/**
 * A document filter denotes a document by different properties like
 * the [language](#TextDocument.languageId), the [scheme](#Uri.scheme) of
 * its resource, or a glob-pattern that is applied to the [path](#TextDocument.fileName).
 *
 * @sample A language filter that applies to typescript files on disk: `{ language: 'typescript', scheme: 'file' }`
 * @sample A language filter that applies to all package.json paths: `{ language: 'json', pattern: '**∕project.json' }`
 */
typedef DocumentFilter = {
    /**
     * A language id, like `typescript`.
     */
    @:optional var language:String;

    /**
     * A Uri [scheme](#Uri.scheme), like `file` or `untitled`.
     */
    @:optional var scheme:String;

    /**
     * A glob pattern, like `*.{ts,js}`.
     */
    @:optional var pattern:String;
}
