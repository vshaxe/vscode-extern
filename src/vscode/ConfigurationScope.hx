package vscode;

/**
 * The configuration scope which can be a
 * a 'resource' or a languageId or both or
 * a '{@link TextDocument}' or
 * a '{@link WorkspaceFolder}'
 */
typedef ConfigurationScope = EitherType<Uri, EitherType<TextDocument, EitherType<WorkspaceFolder, {
	/**
	 * The uri of a {@link TextDocument text document}
	 */
	?uri:Uri,

	/**
	 * The language of a text document
	 */
	languageId:String
}>>>;
