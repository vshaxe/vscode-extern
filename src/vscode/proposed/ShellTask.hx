package vscode.proposed;

import haxe.extern.EitherType;

/**
 * A task that executes a shell command.
 */
@:jsRequire("vscode", "ShellTask")
extern class ShellTask {
    /**
     * Creates a shell task.
     *
     * @param name the task's name. Is presented in the user interface.
     * @param commandLine the command line to execute.
     * @param problemMatchers the problem matchers to use.
     */
    @:overload(function(name:String, commandLine:String, options:ShellTaskOptions, ?problemMatchers:EitherType<String, Array<String>>):Void {})
    function new(name:String, commandLine:String, ?problemMatchers:EitherType<String, Array<String>>);

    /**
     * The task's name
     */
    var name(default,null):String;

    /**
     * The task's identifier. If omitted the internal identifier will
     * be `${extensionName}:${name}`
     */
    var identifier:Null<String>;

    /**
     * Whether the task is a background task or not.
     */
    var isBackground:Bool;

    /**
     * The command line to execute.
     */
    var commandLine(default,null):String;

    /**
     * A human-readable string describing the source of this
     * shell task, e.g. 'gulp' or 'npm'.
     */
    var source:Null<String>;

    /**
     * The task group this tasks belongs to. See TaskGroup
     * for a predefined set of available groups.
     * Defaults to undefined meaning that the task doesn't
     * belong to any special group.
     */
    var group:Null<String>;

    /**
     * The shell options used when the shell is executed. Defaults to an
     * empty object literal.
     */
    var options:ShellTaskOptions;

    /**
     * The terminal options. Defaults to an empty object literal.
     */
    var terminalBehavior:TaskTerminalBehavior;

    /**
     * The problem matchers attached to the task. Defaults to an empty
     * array.
     */
    var problemMatchers:Array<String>;
}
