package vscode;

/**
 * How a [completion provider](#CompletionItemProvider) was triggered
 */
@:jsRequire("vscode", "CompletionTriggerKind")
@:enum extern abstract CompletionTriggerKind(Int) {
    /**
     * Completion was triggered normally.
     */
    var Invoke;

    /**
     * Completion was triggered by a trigger character.
     */
    var TriggerCharacter;
}
