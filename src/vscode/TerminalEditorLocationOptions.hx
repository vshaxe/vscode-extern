package vscode;

/**
 * Assumes a {@link TerminalLocation} of editor and allows specifying a {@link ViewColumn} and
 * {@link TerminalEditorLocationOptions.preserveFocus preserveFocus } property
 */
typedef TerminalEditorLocationOptions = {
	/**
	 * A view column in which the {@link Terminal terminal} should be shown in the editor area.
	 * Use {@link ViewColumn.Active active} to open in the active editor group, other values are
	 * adjusted to be `Min(column, columnCount + 1)`, the
	 * {@link ViewColumn.Active active}-column is not adjusted. Use
	 * {@linkcode ViewColumn.Beside} to open the editor to the side of the currently active one.
	 */
	var viewColumn:ViewColumn;

	/**
	 * An optional flag that when `true` will stop the {@link Terminal} from taking focus.
	 */
	var ?preserveFocus:Bool;
}
