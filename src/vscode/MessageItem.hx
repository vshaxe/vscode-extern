package vscode;

/**
 * Represents an action that is shown with an information, warning, or
 * error message.
 *
 * @see [showInformationMessage](#window.showInformationMessage)
 * @see [showWarningMessage](#window.showWarningMessage)
 * @see [showErrorMessage](#window.showErrorMessage)
 */
typedef MessageItem = {
    /**
     * A short title like 'Retry', 'Open Log' etc.
     */
    var title:String;

    /**
     * Indicates that this item replaces the default
     * 'Close' action.
     */
    @:optional var isCloseAffordance:Bool;
}
