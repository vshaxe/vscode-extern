package vscode;

/**
 * A code action represents a change that can be performed in code, e.g. to fix a problem or
 * to refactor code.
 *
 * A CodeAction must set either [`edit`](#CodeAction.edit) and/or a [`command`](#CodeAction.command). If both are supplied, the `edit` is applied first, then the command is executed.
 */
@:jsRequire("vscode", "CodeAction")
extern class CodeAction {
	/**
	 * A short, human-readable, title for this code action.
	 */
	var title:String;

	/**
	 * A [workspace edit](#WorkspaceEdit) this code action performs.
	 */
	var edit:Null<WorkspaceEdit>;

	/**
	 * [Diagnostics](#Diagnostic) that this code action resolves.
	 */
	var diagnostics:Null<Array<Diagnostic>>;

	/**
	 * A [command](#Command) this code action executes.
	 */
	var command:Null<Command>;

	/**
	 * [Kind](#CodeActionKind) of the code action.
	 *
	 * Used to filter code actions.
	 */
	var kind:Null<CodeActionKind>;

	/**
	 * Marks this as a preferred action. Preferred actions are used by the `auto fix` command and can be targeted
	 * by keybindings.
	 *
	 * A quick fix should be marked preferred if it properly addresses the underlying error.
	 * A refactoring should be marked preferred if it is the most reasonable choice of actions to take.
	 */
	var isPreferred:Null<Bool>;

	/**
	 * Creates a new code action.
	 *
	 * A code action must have at least a [title](#CodeAction.title) and [edits](#CodeAction.edit)
	 * and/or a [command](#CodeAction.command).
	 *
	 * @param title The title of the code action.
	 * @param kind The kind of the code action.
	 */
	function new(title:String, ?kind:CodeActionKind);
}
