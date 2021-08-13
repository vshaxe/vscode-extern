package vscode;

/**
 * Represents a parameter of a callable-signature. A parameter can
 * have a label and a doc-comment.
 */
@:jsRequire("vscode", "ParameterInformation")
extern class ParameterInformation {
	/**
	 * The label of this signature.
	 *
	 * Either a string or inclusive start and exclusive end offsets within its containing
	 * {@link SignatureInformation.label signature label}. *Note*: A label of type string must be
	 * a substring of its containing signature information's {@link SignatureInformation.label label}.
	 */
	var label:EitherType<String, Array<Int>>;

	/**
	 * The human-readable doc-comment of this signature. Will be shown
	 * in the UI but can be omitted.
	 */
	var documentation:Null<EitherType<String, MarkdownString>>;

	/**
	 * Creates a new parameter information object.
	 *
	 * @param label A label string or inclusive start and exclusive end offsets within its containing signature label.
	 * @param documentation A doc string.
	 */
	function new(label:EitherType<String, Array<Int>>, ?documentation:EitherType<String, MarkdownString>);
}
