package vscode;

/**
 * An event signaling the end of a process execution
 * triggered through a task
 */
typedef TaskProcessEndEvent = {
	/**
	 * The task execution for which the process got started.
	 */
	var execution(default, null):TaskExecution;

	/**
	 * The process's exit code. Will be `undefined` when the task is terminated.
	 */
	var exitCode(default, null):Null<Int>;
}
