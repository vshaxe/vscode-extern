package vscode;

/**
 * A text edit represents edits that should be applied
 * to a document.
 */
@:jsRequire("vscode", "TextEdit")
extern class TextEdit {
    /**
     * Utility to create a replace edit.
     *
     * @param range A range.
     * @param newText A string.
     * @return A new text edit object.
     */
    static function replace(range:Range, newText:String):TextEdit;

    /**
     * Utility to create an insert edit.
     *
     * @param position A position, will become an empty range.
     * @param newText A string.
     * @return A new text edit object.
     */
    static function insert(position:Position, newText:String):TextEdit;

    /**
     * Utility to create a delete edit.
     *
     * @param range A range.
     * @return A new text edit object.
     */
    static function delete(range:Range):TextEdit;

    /**
     * The range this edit applies to.
     */
    var range:Range;

    /**
     * The string this edit will insert.
     */
    var newText:String;

    /**
     * Create a new TextEdit.
     *
     * @param range A range.
     * @param newText A string.
     */
    function new(range:Range, newText:String);
}
