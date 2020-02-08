package vscode;

/**
 * The configuration scope which can be a
 * a 'resource' or a languageId or both or
 * a '[TextDocument](#TextDocument)' or
 * a '[WorkspaceFolder](#WorkspaceFolder)'
 */
typedef ConfigurationScope = EitherType<Uri, EitherType<TextDocument, EitherType<WorkspaceFolder, {?uri:Uri, languageId:String}>>>;
