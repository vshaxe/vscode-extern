package vscode;

/**
 * Value-object describing what options a terminal should use.
 */
typedef TerminalOptions = {
    /**
     * A human-readable string which will be used to represent the terminal in the UI.
     */
    @:optional var name:String;

    /**
     * A path to a custom shell executable to be used in the terminal.
     */
    @:optional var shellPath:String;

    /**
     * Args for the custom shell executable, this does not work on Windows (see #8429)
     */
    @:optional var shellArgs:Array<String>;
}
