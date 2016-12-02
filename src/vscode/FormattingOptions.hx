package vscode;

/**
 * Value-object describing what options formatting should use.
 */
typedef FormattingOptions = {
    /**
     * Size of a tab in spaces.
     */
    var tabSize:Int;

    /**
     * Prefer spaces over tabs.
     */
    var insertSpaces:Bool;
}
