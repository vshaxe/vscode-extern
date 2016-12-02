package vscode;

import haxe.extern.EitherType;

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
     * A human-readable string describing the source of this
     * diagnostic, e.g. 'typescript' or 'super lint'.
     */
    var source:String;

    /**
     * The severity, default is [error](#DiagnosticSeverity.Error).
     */
    var severity:DiagnosticSeverity;

    /**
     * A code or identifier for this diagnostics. Will not be surfaced
     * to the user, but should be used for later processing, e.g. when
     * providing [code actions](#CodeActionContext).
     */
    var code:EitherType<String, Int>;

    /**
     * Creates a new diagnostic object.
     *
     * @param range The range to which this diagnostic applies.
     * @param message The human-readable message.
     * @param severity The severity, default is [error](#DiagnosticSeverity.Error).
     */
    function new(range:Range, message:String, ?severity:DiagnosticSeverity):Void;
}
