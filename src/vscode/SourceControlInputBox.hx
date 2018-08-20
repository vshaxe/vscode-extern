package vscode;

/**
 * Represents the input box in the Source Control viewlet.
 */
typedef SourceControlInputBox = {
	/**
	 * Setter and getter for the contents of the input box.
	 */
	var value:String;

	/**
	 * A string to show as place holder in the input box to guide the user.
	 */
	var placeholder:String;
}
