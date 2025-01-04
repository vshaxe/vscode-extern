package vscode;

import js.lib.Uint32Array;

/**
 * Represents an edit to semantic tokens.
 * @see {@link DocumentSemanticTokensProvider.provideDocumentSemanticTokensEdits provideDocumentSemanticTokensEdits} for an explanation of the format.
 */
@:jsRequire("vscode", "SemanticTokensEdit")
extern class SemanticTokensEdit {
	/**
	 * The start offset of the edit.
	 */
	var start(default, null):Int;

	/**
	 * The count of elements to remove.
	 */
	var deleteCount(default, null):Int;

	/**
	 * The elements to insert.
	 */
	var data(default, null):Null<Uint32Array>;

	/**
	 * Create a semantic token edit.
	 *
	 * @param start Start offset
	 * @param deleteCount Number of elements to remove.
	 * @param data Elements to insert
	 */
	function new(start:Int, deleteCount:Int, ?data:Uint32Array);
}
