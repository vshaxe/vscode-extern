package vscode;

@:jsRequire("vscode", "TaskGroup")
@:enum abstract TaskGroup(String) {
    /**
     * The clean task group
     */
    var Clean = 'clean';

    /**
     * The build task group
     */
    var Build = 'build';

    /**
     * The rebuild all task group
     */
    var RebuildAll = 'rebuildAll';

    /**
     * The test task group
     */
    var Test = 'test';
}