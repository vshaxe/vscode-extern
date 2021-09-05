package vscode;

/**
 * Represents options to configure the behavior of showing a {@link TextDocument document} in an {@link TextEditor editor}.
 */
typedef TextDocumentShowOptions = {
	/**
	 * An optional view column in which the {@link TextEditor editor} should be shown.
	 * The default is the {@link ViewColumn.Active active}, other values are adjusted to
	 * be `Min(column, columnCount + 1)`, the {@link ViewColumn.Active active}-column is
	 * not adjusted. Use {@linkcode ViewColumn.Beside} to open the
	 * editor to the side of the currently active one.
	 */
	var ?viewColumn:ViewColumn;

	/**
	 * An optional flag that when `true` will stop the {@link TextEditor editor} from taking focus.
	 */
	var ?preserveFocus:Bool;

	/**
	 * An optional flag that controls if an {@link TextEditor editor}-tab will be replaced
	 * with the next editor or if it will be kept.
	 */
	var ?preview:Bool;

	/**
	 * An optional selection to apply for the document in the {@link TextEditor editor}.
	 */
	var ?selection:Range;
}
