package vscode;

/**
 * Represents the severity of diagnostics.
 */
@:enum abstract DiagnosticSeverity(Int) {
	/**
	 * Something not allowed by the rules of a language or other means.
	 */
	var Error = 0;

	/**
	 * Something suspicious but allowed.
	 */
	var Warning = 1;

	/**
	 * Something to inform about but not a problem.
	 */
	var Information = 2;

	/**
	 * Something to hint to a better way of doing it, like proposing
	 * a refactoring.
	 */
	var Hint = 3;
}
