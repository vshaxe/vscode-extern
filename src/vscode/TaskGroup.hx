package vscode;

/**
 * A grouping for tasks. The editor by default supports the
 * 'Clean', 'Build', 'RebuildAll' and 'Test' group.
 */
@:jsRequire("vscode", "TaskGroup")
extern class TaskGroup {
	/**
	 * The clean task group;
	 */
	public static var Clean:TaskGroup;

	/**
	 * The build task group;
	 */
	public static var Build:TaskGroup;

	/**
	 * The rebuild all task group;
	 */
	public static var Rebuild:TaskGroup;

	/**
	 * The test all task group;
	 */
	public static var Test:TaskGroup;

	/**
	 * Whether the task that is part of this group is the default for the group.
	 * This property cannot be set through API, and is controlled by a user's task configurations.
	 */
	var isDefault(default, null):Null<Bool>;

	/**
	 * The ID of the task group. Is one of TaskGroup.Clean.id, TaskGroup.Build.id, TaskGroup.Rebuild.id, or TaskGroup.Test.id.
	 */
	var id(default, null):String;

	private function new(id:String, label:String);
}
