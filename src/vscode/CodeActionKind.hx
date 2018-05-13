package vscode;

/**
 * Kind of a code action.
 *
 * Kinds are a hierarchical list of identifiers separated by `.`, e.g. `"refactor.extract.function"`.
 */
@:jsRequire("vscode", "CodeActionKind")
extern class CodeActionKind {
    /**
     * Empty kind.
     */
    static var Empty(default,null):CodeActionKind;

    /**
     * Base kind for quickfix actions: `quickfix`
     */
    static var QuickFix(default,null):CodeActionKind;

    /**
     * Base kind for refactoring actions: `refactor`
     */
    static var Refactor(default,null):CodeActionKind;

    /**
     * Base kind for refactoring extraction actions: `refactor.extract`
     *
     * Example extract actions:
     *
     * - Extract method
     * - Extract function
     * - Extract variable
     * - Extract interface from class
     * - ...
     */
    static var RefactorExtract(default,null):CodeActionKind;

    /**
     * Base kind for refactoring inline actions: `refactor.inline`
     *
     * Example inline actions:
     *
     * - Inline function
     * - Inline variable
     * - Inline constant
     * - ...
     */
    static var RefactorInline(default,null):CodeActionKind;

    /**
     * Base kind for refactoring rewrite actions: `refactor.rewrite`
     *
     * Example rewrite actions:
     *
     * - Convert JavaScript function to class
     * - Add or remove parameter
     * - Encapsulate field
     * - Make method static
     * - Move method to base class
     * - ...
     */
    static var RefactorRewrite(default,null):CodeActionKind;

    /**
     * Base kind for source actions: `source`
     *
     * Source code actions apply to the entire file.
     */
    static var Source(default,null):CodeActionKind;

    /**
     * Base kind for an organize imports source action: `source.organizeImports`
     */
    static var SourceOrganizeImports(default,null):CodeActionKind;

    private function new(value:String);

    /**
     * String value of the kind, e.g. `"refactor.extract.function"`.
     */
    var value(default,null):Null<String>;

    /**
     * Create a new kind by appending a more specific selector to the current kind.
     *
     * Does not modify the current kind.
     */
    function append(parts:String):CodeActionKind;

    /**
     * Does this kind contain `other`?
     *
     * The kind `"refactor"` for example contains `"refactor.extract"` and ``"refactor.extract.function"`, but not `"unicorn.refactor.extract"` or `"refactory.extract"`
     *
     * @param other Kind to check.
     */
    function contains(other:CodeActionKind):Bool;
}
