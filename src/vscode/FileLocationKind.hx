package vscode;

/**
 * The way how the file location is interpreted
 */
@:jsRequire("vscode", "FileLocationKind")
@:enum extern abstract FileLocationKind(Int) {
    /**
     * VS Code should decide based on whether the file path found in the
     * output is absolute or relative. A relative file path will be treated
     * relative to the workspace root.
     */
    var Auto = 1;

    /**
     * Always treat the file path relative.
     */
    var Relative = 2;

    /**
     * Always treat the file path absolute.
     */
    var Absolute = 3;
}