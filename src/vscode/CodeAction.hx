package vscode;

/**
 * A code action represents a change that can be performed in code, e.g. to fix a problem or
 * to refactor code.
 *
 * A CodeAction must set either [`edit`](CodeAction#edit) and/or a [`command`](CodeAction#command). If both are supplied, the `edit` is applied first, then the command is executed.
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
