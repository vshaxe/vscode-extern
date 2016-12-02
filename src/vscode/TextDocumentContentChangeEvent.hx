package vscode;

/**
 * An event describing an individual change in the text of a [document](#TextDocument).
 */
typedef TextDocumentContentChangeEvent = {
    /**
     * The range that got replaced.
     */
    var range:Range;

    /**
     * The length of the range that got replaced.
     */
    var rangeLength:Int;

    /**
     * The new text for the range.
     */
    var text:String;
}
