package vscode;

/**
 * Represents a line of text, such as a line of source code.
 *
 * TextLine objects are __immutable__. When a [document](#TextDocument) changes,
 * previously retrieved lines will not represent the latest state.
 */
typedef TextLine = {
    /**
     * The zero-based line number.
     *
     * @readonly
     */
    var lineNumber(default,null):Int;

    /**
     * The text of this line without the line separator characters.
     *
     * @readonly
     */
    var text(default,null):String;

    /**
     * The range this line covers without the line separator characters.
     *
     * @readonly
     */
    var range(default,null):Range;

    /**
     * The range this line covers with the line separator characters.
     *
     * @readonly
     */
    var rangeIncludingLineBreak(default,null):Range;

    /**
     * The offset of the first character which is not a whitespace character as defined
     * by `/\s/`. **Note** that if a line is all whitespaces the length of the line is returned.
     *
     * @readonly
     */
    var firstNonWhitespaceCharacterIndex(default,null):Int;

    /**
     * Whether this line is whitespace only, shorthand
     * for [TextLine.firstNonWhitespaceCharacterIndex](#TextLine.firstNonWhitespaceCharacterIndex) === [TextLine.text.length](#TextLine.text).
     *
     * @readonly
     */
    var isEmptyOrWhitespace(default,null):Bool;
}
