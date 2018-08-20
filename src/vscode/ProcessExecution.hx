package vscode;

/**
 * The execution of a task happens as an external process
 * without shell interaction.
 */
@:jsRequire("vscode", "ProcessExecution")
extern class ProcessExecution {
	/**
	 * Creates a process execution.
	 *
	 * @param process The process to start.
	 * @param args Arguments to be passed to the process.
	 * @param options Optional options for the started process.
	 */
	@:overload(function(process:String, args:Array<String>, ?options:ProcessExecutionOptions):Void {})
	function new(process:String, ?options:ProcessExecutionOptions);

	/**
	 * The process to be executed.
	 */
	var process:String;

	/**
	 * The arguments passed to the process. Defaults to an empty array.
	 */
	var args:Array<String>;

	/**
	 * The process options used when the process is executed.
	 * Defaults to undefined.
	 */
	var options:Null<ProcessExecutionOptions>;
}
