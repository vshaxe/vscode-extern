package vscode;

/**
 * Contains additional information about the context in which
 * {@link CompletionItemProvider.provideCompletionItems completion provider} is triggered.
 */
typedef CompletionContext = {
	/**
	 * How the completion was triggered.
	 */
	var triggerKind(default, null):CompletionTriggerKind;

	/**
	 * Character that triggered the completion item provider.
	 *
	 * `undefined` if provider was not triggered by a character.
	 *
	 * The trigger character is already in the document when the completion provider is triggered.
	 */
	var ?triggerCharacter(default, null):String;
}
