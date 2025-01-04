package vscode;

/**
 * Describes how an {@link InlineCompletionItemProvider inline completion provider} was triggered.
 */
@:jsRequire("vscode", "InlineCompletionTriggerKind")
extern enum abstract InlineCompletionTriggerKind(Int) {
	/**
	 * Completion was triggered explicitly by a user gesture.
	 * Return multiple completion items to enable cycling through them.
	 */
	var Invoke;

	/**
	 * Completion was triggered automatically while editing.
	 * It is sufficient to return a single completion item in this case.
	 */
	var Automatic;
}
