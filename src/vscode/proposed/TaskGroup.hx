package vscode.proposed;

@:jsRequire("vscode", "TaskGroup")
extern class TaskGroup {
    /**
     * The clean task group
     */
    inline static var Clean = 'clean';

    /**
     * The build task group
     */
    inline static var Build = 'build';

    /**
     * The rebuild all task group
     */
    inline static var RebuildAll = 'rebuildAll';

    /**
     * The test task group
     */
    inline static var Test = 'test';
}
