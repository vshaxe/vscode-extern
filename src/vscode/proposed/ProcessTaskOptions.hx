package vscode.proposed;

import haxe.DynamicAccess;

typedef ProcessTaskOptions = {
    /**
     * The current working directory of the executed program or shell.
     * If omitted VSCode's current workspace root is used.
     */
    @:optional var cwd:String;

    /**
     * The additional environment of the executed program or shell. If omitted
     * the parent process' environment is used. If provided it is merged with
     * the parent process' environment.
     */
    @:optional var env:DynamicAccess<String>;
}
