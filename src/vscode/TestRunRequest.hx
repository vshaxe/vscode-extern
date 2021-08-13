package vscode;

/**
 * A TestRunRequest is a precursor to a {@link TestRun}, which in turn is
 * created by passing a request to {@link tests.runTests}. The TestRunRequest
 * contains information about which tests should be run, which should not be
 * run, and how they are run (via the {@link profile}).
 *
 * In general, TestRunRequests are created by the editor and pass to
 * {@link TestRunProfile.runHandler}, however you can also create test
 * requests and runs outside of the `runHandler`.
 */
@:jsRequire("vscode", "TestRunRequest")
extern class TestRunRequest {
	/**
	 * A filter for specific tests to run. If given, the extension should run
	 * all of the included tests and all their children, excluding any tests
	 * that appear in {@link TestRunRequest.exclude}. If this property is
	 * undefined, then the extension should simply run all tests.
	 *
	 * The process of running tests should resolve the children of any test
	 * items who have not yet been resolved.
	 */
	var include(default, null):Null<Array<TestItem>>;

	/**
	 * An array of tests the user has marked as excluded from the test included
	 * in this run; exclusions should apply after inclusions.
	 *
	 * May be omitted if no exclusions were requested. Test controllers should
	 * not run excluded tests or any children of excluded tests.
	 */
	var exclude(default, null):Null<Array<TestItem>>;

	/**
	 * The profile used for this request. This will always be defined
	 * for requests issued from the editor UI, though extensions may
	 * programmatically create requests not associated with any profile.
	 */
	var profile(default, null):Null<TestRunProfile>;

	/**
	 * @param tests Array of specific tests to run, or undefined to run all tests
	 * @param exclude An array of tests to exclude from the run.
	 * @param profile The run profile used for this request.
	 */
	function new(?include:ReadOnlyArray<TestItem>, ?exclude:ReadOnlyArray<TestItem>, ?profile:TestRunProfile);
}
