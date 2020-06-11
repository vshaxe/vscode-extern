package vscode;

/**
 * The scope of a task.
 */
@:jsRequire("vscode", "TaskScope")
extern enum abstract TaskScope(Int) {
	/**
	 * The task is a global task. Global tasks are currently not supported.
	 */
	var Global;

	/**
	 * The task is a workspace task
	 */
	var Workspace;
}
