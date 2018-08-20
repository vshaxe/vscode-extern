package vscode;

/**
 * Represents a diagnostic, such as a compiler error or warning. Diagnostic objects
 * are only valid in the scope of a file.
 */
@:jsRequire("vscode", "Diagnostic")
extern class Diagnostic {
	/**
	 * The range to which this diagnostic applies.
	 */
	var range:Range;

	/**
	 * The human-readable message.
	 */
	var message:String;

	/**
	 * The severity, default is [error](#DiagnosticSeverity.Error).
	 */
	var severity:DiagnosticSeverity;

	/**
	 * A human-readable string describing the source of this
	 * diagnostic, e.g. 'typescript' or 'super lint'.
	 */
	var source:Null<String>;

	/**
	 * A code or identifier for this diagnostics. Will not be surfaced
	 * to the user, but should be used for later processing, e.g. when
	 * providing [code actions](#CodeActionContext).
	 */
	var code:Null<EitherType<String, Int>>;

	/**
	 * An array of related diagnostic information, e.g. when symbol-names within
	 * a scope collide all definitions can be marked via this property.
	 */
	var relatedInformation:Null<Array<DiagnosticRelatedInformation>>;

	/**
	 * Additional metadata about the diagnostic.
	 */
	var tags:Null<Array<DiagnosticTag>>;

	/**
	 * Creates a new diagnostic object.
	 *
	 * @param range The range to which this diagnostic applies.
	 * @param message The human-readable message.
	 * @param severity The severity, default is [error](#DiagnosticSeverity.Error).
	 */
	function new(range:Range, message:String, ?severity:DiagnosticSeverity):Void;
}
