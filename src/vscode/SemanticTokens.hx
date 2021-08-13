package vscode;

import js.lib.Uint32Array;

/**
 * Represents semantic tokens, either in a range or in an entire document.
 * @see {@link DocumentSemanticTokensProvider.provideDocumentSemanticTokens provideDocumentSemanticTokens} for an explanation of the format.
 * @see {@link SemanticTokensBuilder} for a helper to create an instance.
 */
@:jsRequire("vscode", "SemanticTokens")
extern class SemanticTokens {
	/**
	 * The result id of the tokens.
	 *
	 * This is the id that will be passed to `DocumentSemanticTokensProvider.provideDocumentSemanticTokensEdits` (if implemented).
	 */
	var resultId(default, null):Null<String>;

	/**
	 * The actual tokens data.
	 * @see {@link DocumentSemanticTokensProvider.provideDocumentSemanticTokens provideDocumentSemanticTokens} for an explanation of the format.
	 */
	var data(default, null):Uint32Array;

	function new(data:Uint32Array, ?resultId:String);
}
