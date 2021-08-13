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
	 * The severity, default is {@link DiagnosticSeverity.Error error}.
	 */
	var severity:DiagnosticSeverity;

	/**
	 * A human-readable string describing the source of this
	 * diagnostic, e.g. 'typescript' or 'super lint'.
	 */
	var source:Null<String>;

	/**
	 * A code or identifier for this diagnostic.
	 * Should be used for later processing, e.g. when providing {@link CodeActionContext code actions}.
	 */
	var code:Null<EitherType<String, EitherType<Int, {
		/**
		 * A code or identifier for this diagnostic.
		 * Should be used for later processing, e.g. when providing {@link CodeActionContext code actions}.
		 */
		var value:EitherType<String, Int>;

		/**
		 * A target URI to open with more information about the diagnostic error.
		 */
		var target:Uri;
	}>>>;

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
	 * @param severity The severity, default is {@link DiagnosticSeverity.Error error}.
	 */
	function new(range:Range, message:String, ?severity:DiagnosticSeverity):Void;
}
