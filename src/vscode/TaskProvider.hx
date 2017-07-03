package vscode;

/**
 * A task provider allows to add tasks to the task service.
 * A task provider is registerd via #workspace.registerTaskProvider.
 */
typedef TaskProvider = {
	/**
	 * Provides tasks.
	 * @param token A cancellation token.
	 * @return an array of tasks
	 */
	function provideTasks(?token:CancellationToken):ProviderResult<Array<Task>>;

	/**
	 * Resolves a task the has no execution set.
	 * @param task The task to resolve.
	 * @param token A cancellation token.
	 * @return the resolved task
	 */
	function resolveTask(task:Task, ?token:CancellationToken):ProviderResult<Task>;
}
