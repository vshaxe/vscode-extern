package vscode;

import haxe.extern.EitherType;

/**
 * A task that starts an external process.
 */
@:jsRequire("vscode", "ProcessTask")
extern class ProcessTask {
    /**
     * Creates a process task.
     *
     * @param name the task's name. Is presented in the user interface.
     * @param process the process to start.
     * @param problemMatchers the problem matchers to use.
     */
    @:overload(function(name:String, process:String, args:Array<String>, ?problemMatchers:ProblemMatchers):Void {})
    @:overload(function(name:String, process:String, args:Array<String>, options:ProcessOptions, ?problemMatchers:ProblemMatchers):Void {})
    function new(name:String, process:String, ?problemMatchers:ProblemMatchers);

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
     * The process to be executed.
     */
    var process(default,null):String;

    /**
     * The arguments passed to the process. Defaults to an empty array.
     */
    var args:Array<String>;

    /**
     * The task group this tasks belongs to. Defaults to undefined meaning
     * that the task doesn't belong to any special group.
     */
    @:optional var group:TaskGroup;

    /**
     * The process options used when the process is executed.
     * Defaults to an empty object literal.
     */
    var options:ProcessOptions;

    /**
     * The terminal options. Defaults to an empty object literal.
     */
    var terminal:TerminalBehaviour;

    /**
     * The problem matchers attached to the task. Defaults to an empty
     * array.
     */
    var problemMatchers:EitherType<Array<String>, Array<ProblemMatcher>>;
}
