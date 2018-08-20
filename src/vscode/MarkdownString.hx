package vscode;

/**
 * The MarkdownString represents human readable text that supports formatting via the
 * markdown syntax. Standard markdown is supported, also tables, but no embedded html.
 */
@:jsRequire("vscode", "MarkdownString")
extern class MarkdownString {
	/**
	 * The markdown string.
	 */
	var value:String;

	/**
	 * Indicates that this markdown string is from a trusted source. Only *trusted*
	 * markdown supports links that execute commands, e.g. `[Run it](command:myCommandId)`.
	 */
	var isTrusted:Null<Bool>;

	/**
	 * Creates a new markdown string with the given value.
	 *
	 * @param value Optional, initial value.
	 */
	function new(?value:String);

	/**
	 * Appends and escapes the given string to this markdown string.
	 * @param value Plain text.
	 */
	function appendText(value:String):MarkdownString;

	/**
	 * Appends the given string 'as is' to this markdown string.
	 * @param value Markdown string.
	 */
	function appendMarkdown(value:String):MarkdownString;

	/**
	 * Appends the given string as codeblock using the provided language.
	 * @param value A code snippet.
	 * @param language An optional [language identifier](#languages.getLanguages).
	 */
	function appendCodeblock(value:String, ?language:String):MarkdownString;
}
