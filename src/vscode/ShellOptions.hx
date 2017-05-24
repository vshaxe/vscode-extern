package vscode;

import haxe.DynamicAccess;
import haxe.extern.EitherType;

typedef ShellOptions = EitherType<{
    /**
     * The shell executable.
     */
    var executable:String;

    /**
     * The arguments to be passed to the shell executable used to run the task.
     */
    @:optional var shellArgs:Array<String>;

    /**
     * The current working directory of the executed shell.
     * If omitted VSCode's current workspace root is used.
     */
    @:optional var cwd:String;

    /**
     * The additional environment of the executed shell. If omitted
     * the parent process' environment is used. If provided it is merged with
     * the parent process' environment.
     */
    @:optional var env:DynamicAccess<String>;
},
EitherType<{
    /**
     * The current working directory of the executed shell.
     * If omitted VSCode's current workspace root is used.
     */
    var cwd:String;

    /**
     * The additional environment of the executed shell. If omitted
     * the parent process' environment is used. If provided it is merged with
     * the parent process' environment.
     */
    @:optional var env:DynamicAccess<String>;
},
{
    /**
     * The current working directory of the executed shell.
     * If omitted VSCode's current workspace root is used.
     */
    @:optional var cwd:String;
    /**
     * The additional environment of the executed shell. If omitted
     * the parent process' environment is used. If provided it is merged with
     * the parent process' environment.
     */
    var env:DynamicAccess<String>;
}>>