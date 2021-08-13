package vscode;

/**
 * The kind of executions that {@link TestRunProfile TestRunProfiles} control.
 */
@:jsRequire("vscode", "TestRunProfileKind")
extern enum abstract TestRunProfileKind(Int) {
	final Run;
	final Debug;
	final Coverage;
}
