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
	private function new(id:String, label:String);
}
