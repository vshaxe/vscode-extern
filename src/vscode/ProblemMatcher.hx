package vscode;

import haxe.extern.EitherType;

/**
 * Defines a problem matcher
 */
typedef ProblemMatcher = {
    /**
     * The owner of a problem. Defaults to a generated id
     * if omitted.
     */
    @:optional var owner:String;

    /**
     * The type of documents problems detected by this matcher
     * apply to. Default to `ApplyToKind.AllDocuments` if omitted.
     */
    @:optional var applyTo:ApplyToKind;

    /**
     * How a file location recognized by a matcher should be interpreted. If omitted the file location
     * if `FileLocationKind.Auto`.
     */
    @:optional var fileLocation:EitherType<FileLocationKind, String>;

    /**
     * The actual pattern used by the problem matcher.
     */
    @:optional var pattern:EitherType<ProblemPattern, MultiLineProblemPattern>;

    /**
     * The default severity of a detected problem in the output. Used
     * if the `ProblemPattern` doesn't define a severity match group.
     */
    @:optional var severity:DiagnosticSeverity;

    /**
     * A background monitor for tasks that are running in the background.
     */
    @:optional var backgound:BackgroundMonitor;
}
