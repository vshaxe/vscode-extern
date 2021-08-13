package vscode;

/**
 * Notebook controller affinity for notebook documents.
 *
 * @see {@link NotebookController.updateNotebookAffinity}
 */
@:jsRequire("vscode", "NotebookControllerAffinity")
extern enum abstract NotebookControllerAffinity(Int) {
	/**
	 * Default affinity.
	 */
	final Default;

	/**
	 * A controller is preferred for a notebook.
	 */
	final Preferred;
}
