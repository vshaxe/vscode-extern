package vscode;

/**
 * The kind of executions that {@link TestRunProfile TestRunProfiles} control.
 */
@:jsRequire("vscode", "TestRunProfileKind")
extern enum abstract TestRunProfileKind(Int) {
	/**
	 * The `Run` test profile kind.
	 */
	final Run;

	/**
	 * The `Debug` test profile kind.
	 */
	final Debug;

	/**
	 * The `Coverage` test profile kind.
	 */
	final Coverage;
}
