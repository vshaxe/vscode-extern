package vscode;

/**
 * An inline completion item represents a text snippet that is proposed inline to complete text that is being typed.
 *
 * @see {@link InlineCompletionItemProvider.provideInlineCompletionItems}
 */
@:jsRequire("vscode", "InlineCompletionItem")
extern class InlineCompletionItem {
	/**
	 * The text to replace the range with. Must be set.
	 * Is used both for the preview and the accept operation.
	 */
	var insertText:EitherType<String, SnippetString>;

	/**
	 * A text that is used to decide if this inline completion should be shown. When `falsy`
	 * the {@link InlineCompletionItem.insertText} is used.
	 *
	 * An inline completion is shown if the text to replace is a prefix of the filter text.
	 */
	var filterText:Null<String>;

	/**
	 * The range to replace.
	 * Must begin and end on the same line.
	 *
	 * Prefer replacements over insertions to provide a better experience when the user deletes typed text.
	 */
	var range:Null<Range>;

	/**
	 * An optional {@link Command} that is executed *after* inserting this completion.
	 */
	var command:Null<Command>;

	/**
	 * Creates a new inline completion item.
	 *
	 * @param insertText The text to replace the range with.
	 * @param range The range to replace. If not set, the word at the requested position will be used.
	 * @param command An optional {@link Command} that is executed *after* inserting this completion.
	 */
	function new(insertText:EitherType<String, SnippetString>, ?range:Range, ?command:Command);
}
