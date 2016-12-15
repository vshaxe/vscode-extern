package vscode;

import js.Promise.Thenable;

/**
 * Represents a text document, such as a source file. Text documents have
 * [lines](#TextLine) and knowledge about an underlying resource like a file.
 */
typedef TextDocument = {
    /**
     * The associated URI for this document. Most documents have the __file__-scheme, indicating that they
     * represent files on disk. However, some documents may have other schemes indicating that they are not
     * available on disk.
     *
     * @readonly
     */
    var uri(default,null):Uri;

    /**
     * The file system path of the associated resource. Shorthand
     * notation for [TextDocument.uri.fsPath](#TextDocument.uri). Independent of the uri scheme.
     *
     * @readonly
     */
    var fileName(default,null):String;

    /**
     * Is this document representing an untitled file.
     *
     * @readonly
     */
    var isUntitled(default,null):Bool;

    /**
     * The identifier of the language associated with this document.
     *
     * @readonly
     */
    var languageId(default,null):String;

    /**
     * The version number of this document (it will strictly increase after each
     * change, including undo/redo).
     *
     * @readonly
     */
    var version(default,null):Int;

    /**
     * true if there are unpersisted changes.
     *
     * @readonly
     */
    var isDirty(default,null):Bool;

    /**
     * Save the underlying file.
     *
     * @return A promise that will resolve to true when the file
     * has been saved. If the file was not dirty or the save failed,
     * will return false.
     */
    function save():Thenable<Bool>;

    /**
     * The number of lines in this document.
     *
     * @readonly
     */
    var lineCount:Int;

    /**
     * Returns a text line denoted by the line number. Note
     * that the returned object is *not* live and changes to the
     * document are not reflected.
     *
     * @param line A line number in [0, lineCount).
     * @return A [line](#TextLine).
     */
    // TODO: overload PLOX
    // /**
    //  * Returns a text line denoted by the position. Note
    //  * that the returned object is *not* live and changes to the
    //  * document are not reflected.
    //  *
    //  * The position will be [adjusted](#TextDocument.validatePosition).
    //  *
    //  * @see [TextDocument.lineAt](#TextDocument.lineAt)
    //  * @param position A position.
    //  * @return A [line](#TextLine).
    //  */
    @:overload(function(position:Position):TextLine {})
    function lineAt(line:Int):TextLine;

    /**
     * Converts the position to a zero-based offset.
     *
     * The position will be [adjusted](#TextDocument.validatePosition).
     *
     * @param position A position.
     * @return A valid zero-based offset.
     */
    function offsetAt(position:Position):Int;

    /**
     * Converts a zero-based offset to a position.
     *
     * @param offset A zero-based offset.
     * @return A valid [position](#Position).
     */
    function positionAt(offset:Int):Position;

    /**
     * Get the text of this document. A substring can be retrieved by providing
     * a range. The range will be [adjusted](#TextDocument.validateRange).
     *
     * @param range Include only the text included by the range.
     * @return The text inside the provided range or the entire text.
     */
    function getText(?range:Range):String;

    /**
     * Get a word-range at the given position. By default words are defined by
     * common separators, like space, -, _, etc. In addition, per languge custom
     * [word definitions](#LanguageConfiguration.wordPattern) can be defined. It
     * is also possible to provide a custom regular expression.
     *
     * The position will be [adjusted](#TextDocument.validatePosition).
     *
     * @param position A position.
     * @param regex Optional regular expression that describes what a word is.
     * @return A range spanning a word, or `undefined`.
     */
    function getWordRangeAtPosition(position:Position, ?regex:js.RegExp):Null<Range>;

    /**
     * Ensure a range is completely contained in this document.
     *
     * @param range A range.
     * @return The given range or a new, adjusted range.
     */
    function validateRange(range:Range):Range;

    /**
     * Ensure a position is contained in the range of this document.
     *
     * @param position A position.
     * @return The given position or a new, adjusted position.
     */
    function validatePosition(position:Position):Position;
}
