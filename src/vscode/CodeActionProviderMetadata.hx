package vscode;

/**
 * Metadata about the type of code actions that a [CodeActionProvider](#CodeActionProvider) providers
 */
typedef CodeActionProviderMetadata = {
	/**
	 * [CodeActionKinds](#CodeActionKind) that this provider may return.
	 *
	 * The list of kinds may be generic, such as `CodeActionKind.Refactor`, or the provider
	 * may list our every specific kind they provide, such as `CodeActionKind.Refactor.Extract.append('function`)`
	 */
	@:optional var providedCodeActionKinds:ReadonlyArray<CodeActionKind>;
}
