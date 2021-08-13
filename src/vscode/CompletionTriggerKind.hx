package vscode;

/**
 * How a {@link CompletionItemProvider completion provider} was triggered
 */
@:jsRequire("vscode", "CompletionTriggerKind")
extern enum abstract CompletionTriggerKind(Int) {
	/**
	 * Completion was triggered normally.
	 */
	var Invoke;

	/**
	 * Completion was triggered by a trigger character.
	 */
	var TriggerCharacter;

	/**
	 * Completion was re-triggered as current completion list is incomplete
	 */
	var TriggerForIncompleteCompletions;
}
