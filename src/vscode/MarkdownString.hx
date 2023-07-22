package vscode;

/**
 * Human-readable text that supports formatting via the [markdown syntax](https://commonmark.org).
 *
 * Rendering of {@link ThemeIcon theme icons} via the `$(<name>)`-syntax is supported
 * when the {@linkcode supportThemeIcons} is set to `true`.
 *
 * Rendering of embedded html is supported when {@linkcode supportHtml} is set to `true`.
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
	 * Indicates that this markdown string can contain {@link ThemeIcon ThemeIcons}, e.g. `$(zap)`.
	 */
	var supportThemeIcons:Null<Bool>;

	/**
	 * Indicates that this markdown string can contain raw html tags. Defaults to `false`.
	 *
	 * When `supportHtml` is false, the markdown renderer will strip out any raw html tags
	 * that appear in the markdown text. This means you can only use markdown syntax for rendering.
	 *
	 * When `supportHtml` is true, the markdown render will also allow a safe subset of html tags
	 * and attributes to be rendered. See https://github.com/microsoft/vscode/blob/6d2920473c6f13759c978dd89104c4270a83422d/src/vs/base/browser/markdownRenderer.ts#L296
	 * for a list of all supported tags and attributes.
	 */
	var supportHtml:Null<Bool>;

	/**
	 * Creates a new markdown string with the given value.
	 *
	 * @param value Optional, initial value.
	 * @param supportThemeIcons Optional, Specifies whether {@link ThemeIcon ThemeIcons} are supported within the {@linkcode MarkdownString}.
	 */
	function new(?value:String, ?supportThemeIcons:Bool);

	/**
	 * Appends and escapes the given string to this markdown string.
	 * @param value Plain text.
	 */
	function appendText(value:String):MarkdownString;

	/**
	 * Appends the given string 'as is' to this markdown string. When {@linkcode MarkdownString.supportThemeIcons supportThemeIcons} is `true`, {@link ThemeIcon ThemeIcons} in the `value` will be iconified.
	 * @param value Markdown string.
	 */
	function appendMarkdown(value:String):MarkdownString;

	/**
	 * Appends the given string as codeblock using the provided language.
	 * @param value A code snippet.
	 * @param language An optional {@link languages.getLanguages language identifier}.
	 */
	function appendCodeblock(value:String, ?language:String):MarkdownString;
}
