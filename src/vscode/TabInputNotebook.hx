package vscode;

/**
 * The tab represents a notebook.
 */
@:jsRequire("vscode", "TabInputNotebook")
extern class TabInputNotebook {
	/**
	 * The uri that the tab is representing.
	 */
	var uri(default, never):Uri;

	/**
	 * The type of notebook. Maps to {@linkcode NotebookDocument.notebookType NotebookDocuments's notebookType}
	 */
	var notebookType(default, never):String;

	/**
	 * Constructs a new tab input for a notebook.
	 * @param uri The uri of the notebook.
	 * @param notebookType The type of notebook. Maps to {@linkcode NotebookDocument.notebookType NotebookDocuments's notebookType}
	 */
	function new(uri:Uri, notebookType:String);
}
