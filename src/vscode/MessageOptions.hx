package vscode;

/**
 * Options to configure the behavior of the message.
 *
 * @see {@link window.showInformationMessage showInformationMessage}
 * @see {@link window.showWarningMessage showWarningMessage}
 * @see {@link window.showErrorMessage showErrorMessage}
 */
typedef MessageOptions = {
	/**
	 * Indicates that this message should be modal.
	 */
	var ?modal:Bool;

	/**
	 * Human-readable detail message that is rendered less prominent. _Note_ that detail
	 * is only shown for {@link MessageOptions.modal modal} messages.
	 */
	var ?detail:String;
}
