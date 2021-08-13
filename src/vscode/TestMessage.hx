package vscode;

/**
 * Message associated with the test state. Can be linked to a specific
 * source range -- useful for assertion failures, for example.
 */
@:jsRequire("vscode", "TestMessage")
extern class TestMessage {
	/**
	 * Human-readable message text to display.
	 */
	var message:EitherType<String, MarkdownString>;

	/**
	 * Expected test output. If given with {@link actualOutput}, a diff view will be shown.
	 */
	var expectedOutput:Null<String>;

	/**
	 * Actual test output. If given with {@link expectedOutput}, a diff view will be shown.
	 */
	var actualOutput:Null<String>;

	/**
	 * Associated file location.
	 */
	var location:Null<Location>;

	/**
	 * Creates a new TestMessage that will present as a diff in the editor.
	 * @param message Message to display to the user.
	 * @param expected Expected output.
	 * @param actual Actual output.
	 */
	static function diff(message:EitherType<String, MarkdownString>, expected:String, actual:String):TestMessage;

	/**
	 * Creates a new TestMessage instance.
	 * @param message The message to show to the user.
	 */
	function new(message:EitherType<String, MarkdownString>);
}
