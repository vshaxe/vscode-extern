package vscode;

/**
 * Represents the type of user feedback received.
 */
@:jsRequire("vscode", "ChatResultFeedbackKind")
extern enum abstract ChatResultFeedbackKind(Int) {
	/**
	 * The user marked the result as unhelpful.
	 */
	var Unhelpful;

	/**
	 * The user marked the result as helpful.
	 */
	var Helpful;
}
