package vscode;

/**
 * Represents options to configure the behavior of showing a {@link NotebookDocument notebook document} in an {@link NotebookEditor notebook editor}.
 */
typedef NotebookDocumentShowOptions = {
	/**
	 * An optional view column in which the {@link NotebookEditor notebook editor} should be shown.
	 * The default is the {@link ViewColumn.Active active}, other values are adjusted to
	 * be `Min(column, columnCount + 1)`, the {@link ViewColumn.Active active}-column is
	 * not adjusted. Use {@linkcode ViewColumn.Beside} to open the
	 * editor to the side of the currently active one.
	 */
	var ?viewColumn:ViewColumn;

	/**
	 * An optional flag that when `true` will stop the {@link NotebookEditor notebook editor} from taking focus.
	 */
	var ?preserveFocus:Bool;

	/**
	 * An optional flag that controls if an {@link NotebookEditor notebook editor}-tab shows as preview. Preview tabs will
	 * be replaced and reused until set to stay - either explicitly or through editing. The default behaviour depends
	 * on the `workbench.editor.enablePreview`-setting.
	 */
	var ?preview:Bool;

	/**
	 * An optional selection to apply for the document in the {@link NotebookEditor notebook editor}.
	 */
	var ?selections:ReadOnlyArray<NotebookRange>;
}
