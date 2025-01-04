package vscode;

/**
 * Represents user feedback for a result.
 */
typedef ChatResultFeedback = {
	/**
	 * The ChatResult for which the user is providing feedback.
	 * This object has the same properties as the result returned from the participant callback, including `metadata`, but is not the same instance.
	 */
	var result(default, null):ChatResult;

	/**
	 * The kind of feedback that was received.
	 */
	var kind(default, null):ChatResultFeedbackKind;
}
