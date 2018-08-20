package vscode;

/**
 * An event signaling the end of a process execution
 * triggered through a task
 */
typedef TaskProcessEndEvent = {
	/**
	 * The task execution for which the process got started.
	 */
	var execution:TaskExecution;

	/**
	 * The process's exit code.
	 */
	var exitCode:Int;
}
