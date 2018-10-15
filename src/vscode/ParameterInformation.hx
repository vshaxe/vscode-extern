package vscode;

/**
 * Represents a parameter of a callable-signature. A parameter can
 * have a label and a doc-comment.
 */
@:jsRequire("vscode", "ParameterInformation")
extern class ParameterInformation {
	/**
	 * The label of this signature. *Note*: Must be a substring of its
	 * containing signature information's [label](#SignatureInformation.label).
	 */
	var label:String;

	/**
	 * The human-readable doc-comment of this signature. Will be shown
	 * in the UI but can be omitted.
	 */
	var documentation:Null<EitherType<String, MarkdownString>>;

	/**
	 * Creates a new parameter information object.
	 *
	 * @param label A label string.
	 * @param documentation A doc string.
	 */
	function new(label:String, ?documentation:EitherType<String, MarkdownString>);
}
