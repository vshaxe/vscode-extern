package vscode;

/**
 * Controls the behaviour of the terminal's visibility.
 */
@:jsRequire("vscode", "RevealKind")
@:enum extern abstract RevealKind(Int) {
    /**
     * Always brings the terminal to front if the task is executed.
     */
    var Always = 1;

    /**
     * Only brings the terminal to front if a problem is detected executing the task
     * (e.g. the task couldn't be started because).
     */
    var Silent = 2;

    /**
     * The terminal never comes to front when the task is executed.
     */
    var Never = 3;
}