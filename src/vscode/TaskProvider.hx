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
     * Resolves a task that has no [`execution`](#Task.execution) set. Tasks are
     * often created from information found in the `task.json`-file. Such tasks miss
     * the information on how to execute them and a task provider must fill in
     * the missing information in the `resolveTask`-method.
     *
     * @param task The task to resolve.
     * @param token A cancellation token.
     * @return The resolved task
     */
    function resolveTask(task:Task, ?token:CancellationToken):ProviderResult<Task>;
}
