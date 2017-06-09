package vscode.proposed;

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
    @:overload(function(name:String, process:String, args:Array<String>, ?problemMatchers:EitherType<String, Array<String>>):Void {})
    @:overload(function(name:String, process:String, args:Array<String>, options:ProcessTaskOptions, ?problemMatchers:EitherType<String, Array<String>>):Void {})
    function new(name:String, process:String, ?problemMatchers:EitherType<String, Array<String>>);

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
     * The process to be executed.
     */
    var process(default,null):String;

    /**
     * The arguments passed to the process. Defaults to an empty array.
     */
    var args:Array<String>;

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
     * The process options used when the process is executed.
     * Defaults to an empty object literal.
     */
    var options:ProcessTaskOptions;

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
