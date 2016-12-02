package vscode;

/**
 * Signature help represents the signature of something
 * callable. There can be multiple signatures but only one
 * active and only one active parameter.
 */
@:jsRequire("vscode", "SignatureHelp")
extern class SignatureHelp {
    /**
     * One or more signatures.
     */
    var signatures:Array<SignatureInformation>;

    /**
     * The active signature.
     */
    var activeSignature:Int;

    /**
     * The active parameter of the active signature.
     */
    var activeParameter:Int;
}
