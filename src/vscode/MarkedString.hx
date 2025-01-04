package vscode;

/**
 * MarkedString can be used to render human-readable text. It is either a markdown string
 * or a code-block that provides a language and a code snippet. Note that
 * markdown strings will be sanitized - that means html will be escaped.
 *
 * @deprecated This type is deprecated, please use {@linkcode MarkdownString} instead.
 */
typedef MarkedString = EitherType<String, {
	/**
	 * The language of a markdown code block
	 * @deprecated please use {@linkcode MarkdownString} instead
	 */
	language:String,

	/**
	 * The code snippet of a markdown code block.
	 * @deprecated please use {@linkcode MarkdownString} instead
	 */
	value:String
}>;
