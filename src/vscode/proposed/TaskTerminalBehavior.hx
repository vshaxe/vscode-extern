package vscode.proposed;

/**
 * Controls terminal specific behavior.
 */
typedef TaskTerminalBehavior = {
    /**
     * Controls whether the terminal executing a task is brought to front or not.
     * Defaults to `RevealKind.Always`.
     */
    @:optional var reveal:TaskRevealKind;

    /**
     * Controls whether the command is echoed in the terminal or not.
     */
    @:optional var echo:Bool;
}
