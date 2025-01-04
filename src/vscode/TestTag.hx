package vscode;

/**
 * Tags can be associated with {@link TestItem TestItems} and
 * {@link TestRunProfile TestRunProfiles}. A profile with a tag can only
 * execute tests that include that tag in their {@link TestItem.tags} array.
 */
@:jsRequire("vscode", "TestTag")
extern class TestTag {
	/**
	 * ID of the test tag. `TestTag` instances with the same ID are considered
	 * to be identical.
	 */
	var id(default, null):String;

	/**
	 * Creates a new TestTag instance.
	 * @param id ID of the test tag.
	 */
	function new(id:String);
}
