package vscode;

/**
 * Represents a collection of {@link CompletionItem completion items} to be presented
 * in the editor.
 */
@:jsRequire("vscode", "CompletionList")
extern class CompletionList<T:CompletionItem> {
	/**
	 * This list is not complete. Further typing should result in recomputing
	 * this list.
	 */
	var isIncomplete:Null<Bool>;

	/**
	 * The completion items.
	 */
	var items:Array<T>;

	/**
	 * Creates a new completion list.
	 *
	 * @param items The completion items.
	 * @param isIncomplete The list is not complete.
	 */
	function new(?items:Array<T>, ?isIncomplete:Bool);
}
