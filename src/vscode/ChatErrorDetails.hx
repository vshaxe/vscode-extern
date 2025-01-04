package vscode;

/**
 * Represents an error result from a chat request.
 */
typedef ChatErrorDetails = {
	/**
	 * An error message that is shown to the user.
	 */
	var message:String;

	/**
	 * If set to true, the response will be partly blurred out.
	 */
	var ?responseIsFiltered:Bool;
}
