package vscode;

/**
 * An edit operation applied {@link DocumentDropEditProvider on drop}.
 */
@:jsRequire("vscode", "DocumentDropEdit")
extern class DocumentDropEdit {
	/**
	 * The text or snippet to insert at the drop location.
	 */
	var insertText:EitherType<String, SnippetString>;

	/**
	 * An optional additional edit to apply on drop.
	 */
	var additionalEdit:Null<WorkspaceEdit>;

	/**
	 * @param insertText The text or snippet to insert at the drop location.
	 */
	function new(insertText:EitherType<String, SnippetString>);
}
