package vscode;

/**
 * The tabs represents two notebooks in a diff configuration.
 */
@:jsRequire("vscode", "TabInputNotebookDiff")
extern class TabInputNotebookDiff {
	/**
	 * The uri of the original notebook.
	 */
	var original(default, never):Uri;

	/**
	 * The uri of the modified notebook.
	 */
	var modified(default, never):Uri;

	/**
	 * The type of notebook. Maps to {@linkcode NotebookDocument.notebookType NotebookDocuments's notebookType}
	 */
	var notebookType(default, never):String;

	/**
	 * Constructs a notebook diff tab input.
	 * @param original The uri of the original unmodified notebook.
	 * @param modified The uri of the modified notebook.
	 * @param notebookType The type of notebook. Maps to {@linkcode NotebookDocument.notebookType NotebookDocuments's notebookType}
	 */
	function new(original:Uri, modified:Uri, notebookType:String);
}
