package vscode;

/**
 * Defines a generalized way of reporting progress updates.
 */
typedef Progress<T> = {
    /**
     * Report a progress update.
     * @param value A progress item, like a message or an updated percentage value
     */
    function report(value:T):Void;
}
