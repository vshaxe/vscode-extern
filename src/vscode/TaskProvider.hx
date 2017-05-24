package vscode;

/**
 * A task provider allows to add tasks to the task service.
 * A task provider is registerd via #workspace.registerTaskProvider.
 */
typedef TaskProvider = {
    /**
     * Provides additional tasks.
     * @param token A cancellation token.
     * @return a #TaskSet
     */
    function provideTasks(token:CancellationToken):ProviderResult<Array<Task>>;
}
