package vscode;

/**
 * A provider that can contribute items to the status bar that appears below a cell's editor.
 */
typedef NotebookCellStatusBarItemProvider = {
	/**
	 * An optional event to signal that statusbar items have changed. The provide method will be called again.
	 */
	var ?onDidChangeCellStatusBarItems:Event<Void>;

	/**
	 * The provider will be called when the cell scrolls into view, when its content, outputs, language, or metadata change, and when it changes execution state.
	 * @param cell The cell for which to return items.
	 * @param token A token triggered if this request should be cancelled.
	 * @returns One or more {@link NotebookCellStatusBarItem cell statusbar items}
	 */
	function provideCellStatusBarItems(cell:NotebookCell,
		token:CancellationToken):ProviderResult<EitherType<NotebookCellStatusBarItem, Array<NotebookCellStatusBarItem>>>;
}
