package vscode;

import haxe.extern.EitherType;

/**
 * A task to execute
 */
@:jsRequire("vscode", "Task")
extern class Task {
    /**
     * Creates a new task.
     *
     * @param definition The task definition as defined in the taskDefintions extension point.
     * @param name The task's name. Is presented in the user interface.
     * @param source The task's source (e.g. 'gulp', 'npm', ...). Is presented in the user interface.
     * @param execution The process or shell execution.
     * @param problemMatchers the names of problem matchers to use, like '$tsc'
     *  or '$eslint'. Problem matchers can be contributed by an extension using
     *  the `problemMatchers` extension point.
     */
    function new(taskDefinition:TaskDefinition, name:String, source:String, ?execution:EitherType<ProcessExecution, ShellExecution>, ?problemMatchers:EitherType<String,Array<String>>);

    /**
     * The task's definition.
     */
    var definition:TaskDefinition;

    /**
     * The task's name
     */
    var name:String;

    /**
     * The task's execution engine
     */
    var execution:EitherType<ProcessExecution, ShellExecution>;

    /**
     * Whether the task is a background task or not.
     */
    var isBackground:Bool;

    /**
     * A human-readable string describing the source of this
     * shell task, e.g. 'gulp' or 'npm'.
     */
    var source:String;

    /**
     * The task group this tasks belongs to. See TaskGroup
     * for a predefined set of available groups.
     * Defaults to undefined meaning that the task doesn't
     * belong to any special group.
     */
    var group:Null<TaskGroup>;

    /**
     * The presentation options. Defaults to an empty literal.
     */
    var presentationOptions:TaskPresentationOptions;

    /**
     * The problem matchers attached to the task. Defaults to an empty
     * array.
     */
    var problemMatchers:Array<String>;
}
