package vscode;

/**
 * Represents a collection of {@link InlineCompletionItem inline completion items} to be presented
 * in the editor.
 */
@:jsRequire("vscode", "InlineCompletionList")
extern class InlineCompletionList {
	/**
	 * The inline completion items.
	 */
	var items:Array<InlineCompletionItem>;

	/**
	 * Creates a new list of inline completion items.
	 */
	function new(items:Array<InlineCompletionItem>);
}
