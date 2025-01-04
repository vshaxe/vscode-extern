package vscode;

/**
 * Represents a part of a chat response that is formatted as Markdown.
 */
@:jsRequire("vscode", "ChatResponseMarkdownPart")
extern class ChatResponseMarkdownPart {
	/**
	 * A markdown string or a string that should be interpreted as markdown.
	 */
	var value:MarkdownString;

	/**
	 * Create a new ChatResponseMarkdownPart.
	 *
	 * @param value A markdown string or a string that should be interpreted as markdown. The boolean form of {@link MarkdownString.isTrusted} is NOT supported.
	 */
	function new(value:EitherType<String, MarkdownString>);
}
