package vscode;

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
    @:overload(function(name:String, commandLine:String, options:ShellOptions, ?problemMatchers:ProblemMatchers):Void {})
    function new(name:String, commandLine:String, ?problemMatchers:ProblemMatchers);

    /**
     * The task's name
     */
    var name(default,null):String;

    /**
     * The task's identifier. If omitted the name is
     * used as an identifier.
     */
    var identifier:String;

    /**
     * Whether the task is a background task or not.
     */
    var isBackground:Bool;

    /**
     * The command line to execute.
     */
    var commandLine(default,null):String;

    /**
     * The task group this tasks belongs to. Defaults to undefined meaning
     * that the task doesn't belong to any special group.
     */
    @:optional var group:TaskGroup;

    /**
     * The shell options used when the shell is executed. Defaults to an
     * empty object literal.
     */
    var options:ShellOptions;

    /**
     * The terminal options. Defaults to an empty object literal.
     */
    var terminal:TerminalBehaviour;

    /**
     * The problem matchers attached to the task. Defaults to an empty
     * array.
     */
    var problemMatchers:Array<EitherType<String, ProblemMatcher>>;
}
