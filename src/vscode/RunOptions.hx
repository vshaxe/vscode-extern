package vscode;

/**
 * Run options for a task.
 */
typedef RunOptions = {
	/**
	 * Controls whether task variables are re-evaluated on rerun.
	 */
	var ?reevaluateOnRerun:Bool;
}
