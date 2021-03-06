package vscode;

/**
 * An event signaling the start of a task execution.
 *
 * This interface is not intended to be implemented.
 */
typedef TaskStartEvent = {
	/**
	 * The task item representing the task that got started.
	 */
	var execution(default, null):TaskExecution;
}
