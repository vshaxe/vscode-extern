package vscode;

/**
 * Options to configure the behavior of the message.
 *
 * @see [showInformationMessage](#window.showInformationMessage)
 * @see [showWarningMessage](#window.showWarningMessage)
 * @see [showErrorMessage](#window.showErrorMessage)
 */
typedef MessageOptions = {
	/**
	 * Indicates that this message should be modal.
	 */
	@:optional var modal:Bool;
}
