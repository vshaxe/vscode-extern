package vscode.proposed;

/**
 * Controls terminal specific behaviour.
 */
typedef TerminalBehaviour = {
    /**
     * Controls whether the terminal executing a task is brought to front or not.
     * Defaults to `RevealKind.Always`.
     */
    @:optional var reveal:RevealKind;

    /**
     * Controls whether the command is echoed in the terminal or not.
     */
    @:optional var echo:Bool;
}
