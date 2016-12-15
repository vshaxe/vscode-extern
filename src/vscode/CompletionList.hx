package vscode;

/**
 * Represents a collection of [completion items](#CompletionItem) to be presented
 * in the editor.
 */
@:jsRequire("vscode", "CompletionList")
extern class CompletionList {
    /**
     * This list it not complete. Further typing should result in recomputing
     * this list.
     */
    var isIncomplete:Null<Bool>;

    /**
     * The completion items.
     */
    var items:Array<CompletionItem>;

    /**
     * Creates a new completion list.
     *
     * @param items The completion items.
     * @param isIncomplete The list is not complete.
     */
    function new(?items:Array<CompletionItem>, ?isIncomplete:Bool);
}
