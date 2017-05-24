package vscode;

import js.RegExp;

/**
 * Defines a problem pattern
 */
typedef ProblemPattern = {
    /**
     * The regular expression to find a problem in the console output of an
     * executed task.
     */
    var regexp:RegExp;

    /**
     * The match group index of the filename.
     *
     * Defaults to 1 if omitted.
     */
    @:optional var file:Int;

    /**
     * The match group index of the problems's location. Valid location
     * patterns are: (line), (line,column) and (startLine,startColumn,endLine,endColumn).
     * If omitted the line and colum properties are used.
     */
    @:optional var location:Int;

    /**
     * The match group index of the problem's line in the source file.
     *
     * Defaults to 2 if omitted.
     */
    @:optional var line:Int;

    /**
     * The match group index of the problem's character in the source file.
     *
     * Defaults to 3 if omitted.
     */
    @:optional character:Int;

    /**
      * The match group index of the problem's end line in the source file.
      *
      * Defaults to undefined. No end line is captured.
      */
    @:optional var endLine:Int;

    /**
     * The match group index of the problem's end character in the source file.
     *
     * Defaults to undefined. No end column is captured.
     */
    @:optional var endCharacter:Int;

    /**
     * The match group index of the problem's severity.
     *
     * Defaults to undefined. In this case the problem matcher's severity
     * is used.
     */
    @:optional var severity:Int;

    /**
     * The match group index of the problems's code.
     *
     * Defaults to undefined. No code is captured.
     */
    @:optional var code:Int;

    /**
     * The match group index of the message. If omitted it defaults
     * to 4 if location is specified. Otherwise it defaults to 5.
     */
    @:optional var message:Int;

    /**
     * Specifies if the last pattern in a multi line problem matcher should
     * loop as long as it does match a line consequently. Only valid on the
     * last problem pattern in a multi line problem matcher.
     */
    @:optional var loop:Bool;
}