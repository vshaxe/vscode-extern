package vscode;

/**
 * The result of a chat request.
 */
typedef ChatResult = {
	/**
	 * If the request resulted in an error, this property defines the error details.
	 */
	var ?errorDetails:ChatErrorDetails;

	/**
	 * Arbitrary metadata for this result. Can be anything, but must be JSON-stringifyable.
	 */
	var ?metadata:DynamicAccess<Any>;
}
