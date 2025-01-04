package vscode;

/**
 * The summary of a notebook cell execution.
 */
typedef NotebookCellExecutionSummary = {
	/**
	 * The order in which the execution happened.
	 */
	var ?executionOrder(default, null):Int;

	/**
	 * If the execution finished successfully.
	 */
	var ?success(default, null):Bool;

	/**
	 * The times at which execution started and ended, as unix timestamps
	 */
	var ?timing(default, null):{
		/**
		 * Execution start time.
		 */
		startTime:Float,
		/**
		 * Execution end time.
		 */
		endTime:Float
	};
}
