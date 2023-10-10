package vscode;

/**
 * Represents edits to semantic tokens.
 * @see {@link DocumentSemanticTokensProvider.provideDocumentSemanticTokensEdits provideDocumentSemanticTokensEdits} for an explanation of the format.
 */
@:jsRequire("vscode", "SemanticTokensEdits")
extern class SemanticTokensEdits {
	/**
	 * The result id of the tokens.
	 *
	 * This is the id that will be passed to `DocumentSemanticTokensProvider.provideDocumentSemanticTokensEdits` (if implemented).
	 */
	var resultId(default, null):Null<String>;

	/**
	 * The edits to the tokens data.
	 * All edits refer to the initial data state.
	 */
	var edits(default, null):Array<SemanticTokensEdit>;

	/**
	 * Create a semantic token edit.
	 *
	 * @param start Start offset
	 * @param deleteCount Number of elements to remove.
	 * @param data Elements to insert
	 */
	function new(edits:Array<SemanticTokensEdit>, ?resultId:String);
}
