package vscode;

@:jsRequire("vscode", "ShellExecution")
extern class ShellExecution {
    /**
     * Creates a process execution.
     *
     * @param commandLine The command line to execute.
     * @param options Optional options for the started the shell.
     */
    function new(commandLine:String, ?options:ShellExecutionOptions);

    /**
     * The shell command line
     */
    var commandLine:String;

    /**
     * The shell options used when the command line is executed in a shell.
     * Defaults to undefined.
     */
    var options:Null<ShellExecutionOptions>;
}
