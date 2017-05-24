package vscode;

import js.RegExp;

/**
 * A background monitor pattern
 */
typedef BackgroundPattern = {
    /**
     * The actual regular expression
     */
    var regexp:RegExp;

    /**
     * The match group index of the filename. If provided the expression
     * is matched for that file only.
     */
    @:optional var file:Int;
}