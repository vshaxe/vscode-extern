package vscode;

/**
 * ~~MarkedString can be used to render human readable text. It is either a markdown string
 * or a code-block that provides a language and a code snippet. Note that
 * markdown strings will be sanitized - that means html will be escaped.~~
 *
 * @deprecated This type is deprecated, please use [`MarkdownString`](#MarkdownString) instead.
 */
typedef MarkedString = EitherType<MarkdownString, EitherType<String, {language:String, value:String}>>;
