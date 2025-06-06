package vscode;

/**
 * An item shown in the "test explorer" view.
 *
 * A `TestItem` can represent either a test suite or a test itself, since
 * they both have similar capabilities.
 */
typedef TestItem = {
	/**
	 * Identifier for the `TestItem`. This is used to correlate
	 * test results and tests in the document with those in the workspace
	 * (test explorer). This cannot change for the lifetime of the `TestItem`,
	 * and must be unique among its parent's direct children.
	 */
	var id(default, null):String;

	/**
	 * URI this `TestItem` is associated with. May be a file or directory.
	 */
	var uri(default, null):Null<Uri>;

	/**
	 * The children of this test item. For a test suite, this may contain the
	 * individual test cases or nested suites.
	 */
	var children(default, null):TestItemCollection;

	/**
	 * The parent of this item. It's set automatically, and is undefined
	 * top-level items in the {@link TestController.items} and for items that
	 * aren't yet included in another item's {@link TestItem.children children}.
	 */
	var parent(default, null):Null<TestItem>;

	/**
	 * Tags associated with this test item. May be used in combination with
	 * {@link TestRunProfile.tag tags}, or simply as an organizational feature.
	 */
	var tags:ReadOnlyArray<TestTag>;

	/**
	 * Indicates whether this test item may have children discovered by resolving.
	 *
	 * If true, this item is shown as expandable in the Test Explorer view and
	 * expanding the item will cause {@link TestController.resolveHandler}
	 * to be invoked with the item.
	 *
	 * Default to `false`.
	 */
	var canResolveChildren:Bool;

	/**
	 * Controls whether the item is shown as "busy" in the Test Explorer view.
	 * This is useful for showing status while discovering children.
	 *
	 * Defaults to `false`.
	 */
	var busy:Bool;

	/**
	 * Display name describing the test case.
	 */
	var label:String;

	/**
	 * Optional description that appears next to the label.
	 */
	var ?description:String;

	/**
	 * A string that should be used when comparing this item
	 * with other items. When `falsy` the {@link TestItem.label label}
	 * is used.
	 */
	var ?sortText:Null<String>;

	/**
	 * Location of the test item in its {@link TestItem.uri uri}.
	 *
	 * This is only meaningful if the `uri` points to a file.
	 */
	var range:Null<Range>;

	/**
	 * Optional error encountered while loading the test.
	 *
	 * Note that this is not a test result and should only be used to represent errors in
	 * test discovery, such as syntax errors.
	 */
	var error:Null<EitherType<String, MarkdownString>>;
}
