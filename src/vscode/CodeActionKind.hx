package vscode;

/**
 * Kind of a code action.
 *
 * Kinds are a hierarchical list of identifiers separated by `.`, e.g. `"refactor.extract.function"`.
 *
 * Code action kinds are used by the editor for UI elements such as the refactoring context menu. Users
 * can also trigger code actions with a specific kind with the `editor.action.codeAction` command.
 */
@:jsRequire("vscode", "CodeActionKind")
extern class CodeActionKind {
	/**
	 * Empty kind.
	 */
	static var Empty(default, null):CodeActionKind;

	/**
	 * Base kind for quickfix actions: `quickfix`.
	 *
	 * Quick fix actions address a problem in the code and are shown in the normal code action context menu.
	 */
	static var QuickFix(default, null):CodeActionKind;

	/**
	 * Base kind for refactoring actions: `refactor`
	 *
	 * Refactoring actions are shown in the refactoring context menu.
	 */
	static var Refactor(default, null):CodeActionKind;

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
	static var RefactorExtract(default, null):CodeActionKind;

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
	static var RefactorInline(default, null):CodeActionKind;

	/**
	 * Base kind for refactoring move actions: `refactor.move`
	 *
	 * Example move actions:
	 *
	 * - Move a function to a new file
	 * - Move a property between classes
	 * - Move method to base class
	 * - ...
	 */
	static var RefactorMove(default, null):CodeActionKind;

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
	static var RefactorRewrite(default, null):CodeActionKind;

	/**
	 * Base kind for source actions: `source`
	 *
	 * Source code actions apply to the entire file. They must be explicitly requested and will not show in the
	 * normal [lightbulb](https://code.visualstudio.com/docs/editor/editingevolved#_code-action) menu. Source actions
	 * can be run on save using `editor.codeActionsOnSave` and are also shown in the `source` context menu.
	 */
	static var Source(default, null):CodeActionKind;

	/**
	 * Base kind for an organize imports source action: `source.organizeImports`.
	 */
	static var SourceOrganizeImports(default, null):CodeActionKind;

	/**
	 * Base kind for auto-fix source actions: `source.fixAll`.
	 *
	 * Fix all actions automatically fix errors that have a clear fix that do not require user input.
	 * They should not suppress errors or perform unsafe fixes such as generating new types or classes.
	 */
	static var SourceFixAll(default, null):CodeActionKind;

	/**
	 * Base kind for all code actions applying to the enitre notebook's scope. CodeActionKinds using
	 * this should always begin with `notebook.`
	 *
	 * This requires that new CodeActions be created for it and contributed via extensions.
	 * Pre-existing kinds can not just have the new `notebook.` prefix added to them, as the functionality
	 * is unique to the full-notebook scope.
	 *
	 * Notebook CodeActionKinds can be initialized as either of the following (both resulting in `notebook.source.xyz`):
	 * - `const newKind =  CodeActionKind.Notebook.append(CodeActionKind.Source.append('xyz').value)`
	 * - `const newKind =  CodeActionKind.Notebook.append('source.xyz')`
	 *
	 * Example Kinds/Actions:
	 * - `notebook.source.organizeImports` (might move all imports to a new top cell)
	 * - `notebook.source.normalizeVariableNames` (might rename all variables to a standardized casing format)
	 */
	static var Notebook(default, null):CodeActionKind;

	/**
	 * Private constructor, use statix `CodeActionKind.XYZ` to derive from an existing code action kind.
	 *
	 * @param value The value of the kind, such as `refactor.extract.function`.
	 */
	private function new(value:String);

	/**
	 * String value of the kind, e.g. `"refactor.extract.function"`.
	 */
	var value(default, null):String;

	/**
	 * Create a new kind by appending a more specific selector to the current kind.
	 *
	 * Does not modify the current kind.
	 */
	function append(parts:String):CodeActionKind;

	/**
	 * Checks if this code action kind intersects `other`.
	 *
	 * The kind `"refactor.extract"` for example intersects `refactor`, `"refactor.extract"` and ``"refactor.extract.function"`,
	 * but not `"unicorn.refactor.extract"`, or `"refactor.extractAll"`.
	 *
	 * @param other Kind to check.
	 */
	function intersects(other:CodeActionKind):Bool;

	/**
	 * Checks if `other` is a sub-kind of this `CodeActionKind`.
	 *
	 * The kind `"refactor.extract"` for example contains `"refactor.extract"` and ``"refactor.extract.function"`,
	 * but not `"unicorn.refactor.extract"`, or `"refactor.extractAll"` or `refactor`.
	 *
	 * @param other Kind to check.
	 */
	function contains(other:CodeActionKind):Bool;
}
