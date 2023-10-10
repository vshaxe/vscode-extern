package vscode;

@:jsRequire("vscode", "TestTag")
extern class TestTag {
	/**
	 * ID of the test tag. `TestTag` instances with the same ID are considered
	 * to be identical.
	 */
	final id:String;

	/**
	 * Creates a new TestTag instance.
	 * @param id ID of the test tag.
	 */
	function new(id:String);
}
