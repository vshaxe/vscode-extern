package vscode;

/**
 * A TestRun represents an in-progress or completed test run and
 * provides methods to report the state of individual tests in the run.
 */
typedef TestRun = {
	/**
	 * The human-readable name of the run. This can be used to
	 * disambiguate multiple sets of results in a test run. It is useful if
	 * tests are run across multiple platforms, for example.
	 */
	var name(default, null):Null<String>;

	/**
	 * A cancellation token which will be triggered when the test run is
	 * canceled from the UI.
	 */
	var token(default, null):CancellationToken;

	/**
	 * Whether the test run will be persisted across reloads by the editor.
	 */
	var isPersisted(default, null):Bool;

	/**
	 * Indicates a test is queued for later execution.
	 * @param test Test item to update.
	 */
	function enqueued(test:TestItem):Void;

	/**
	 * Indicates a test has started running.
	 * @param test Test item to update.
	 */
	function started(test:TestItem):Void;

	/**
	 * Indicates a test has been skipped.
	 * @param test Test item to update.
	 */
	function skipped(test:TestItem):Void;

	/**
	 * Indicates a test has failed. You should pass one or more
	 * {@link TestMessage TestMessages} to describe the failure.
	 * @param test Test item to update.
	 * @param message Messages associated with the test failure.
	 * @param duration How long the test took to execute, in milliseconds.
	 */
	function failed(test:TestItem, message:EitherType<TestMessage, ReadOnlyArray<TestMessage>>, ?duration:Float):Void;

	/**
	 * Indicates a test has errored. You should pass one or more
	 * {@link TestMessage TestMessages} to describe the failure. This differs
	 * from the "failed" state in that it indicates a test that couldn't be
	 * executed at all, from a compilation error for example.
	 * @param test Test item to update.
	 * @param message Messages associated with the test failure.
	 * @param duration How long the test took to execute, in milliseconds.
	 */
	function errored(test:TestItem, message:EitherType<TestMessage, ReadOnlyArray<TestMessage>>, ?duration:Float):Void;

	/**
	 * Indicates a test has passed.
	 * @param test Test item to update.
	 * @param duration How long the test took to execute, in milliseconds.
	 */
	function passed(test:TestItem, ?duration:Float):Void;

	/**
	 * Appends raw output from the test runner. On the user's request, the
	 * output will be displayed in a terminal. ANSI escape sequences,
	 * such as colors and text styles, are supported. New lines must be given
	 * as CRLF (`\r\n`) rather than LF (`\n`).
	 *
	 * @param output Output text to append.
	 * @param location Indicate that the output was logged at the given
	 * location.
	 * @param test Test item to associate the output with.
	 */
	function appendOutput(output:String, ?location:Location, ?test:TestItem):Void;

	/**
	 * Adds coverage for a file in the run.
	 */
	function addCoverage(fileCoverage:FileCoverage):Void;

	/**
	 * Signals the end of the test run. Any tests included in the run whose
	 * states have not been updated will have their state reset.
	 */
	function end():Void;

	/**
	 * An event fired when the editor is no longer interested in data
	 * associated with the test run.
	 */
	function onDidDispose():Event<Void>;
}
