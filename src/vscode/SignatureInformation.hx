package vscode;

/**
 * Represents the signature of something callable. A signature
 * can have a label, like a function-name, a doc-comment, and
 * a set of parameters.
 */
@:jsRequire("vscode", "SignatureInformation")
extern class SignatureInformation {
	/**
	 * The label of this signature. Will be shown in
	 * the UI.
	 */
	var label:String;

	/**
	 * The human-readable doc-comment of this signature. Will be shown
	 * in the UI but can be omitted.
	 */
	var documentation:Null<EitherType<String, MarkdownString>>;

	/**
	 * The parameters of this signature.
	 */
	var parameters:Array<ParameterInformation>;

	/**
	 * Creates a new signature information object.
	 *
	 * @param label A label string.
	 * @param documentation A doc string.
	 */
	function new(label:String, ?documentation:EitherType<String, MarkdownString>);
}
