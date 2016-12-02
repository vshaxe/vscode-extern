package vscode;

/**
 * A workspace edit represents textual changes for many documents.
 */
@:jsRequire("vscode", "WorkspaceEdit")
extern class WorkspaceEdit {
    function new();

    /**
     * The number of affected resources.
     *
     * @readonly
     */
    var size(default,null):Int;

    /**
     * Replace the given range with given text for the given resource.
     *
     * @param uri A resource identifier.
     * @param range A range.
     * @param newText A string.
     */
    function replace(uri:Uri, range:Range, newText:String):Void;

    /**
     * Insert the given text at the given position.
     *
     * @param uri A resource identifier.
     * @param position A position.
     * @param newText A string.
     */
    function insert(uri:Uri, position:Position, newText:String):Void;

    /**
     * Delete the text at the given range.
     *
     * @param uri A resource identifier.
     * @param range A range.
     */
    function delete(uri:Uri, range:Range):Void;

    /**
     * Check if this edit affects the given resource.
     * @param uri A resource identifier.
     * @return `true` if the given resource will be touched by this edit.
     */
    function has(uri:Uri):Bool;

    /**
     * Set (and replace) text edits for a resource.
     *
     * @param uri A resource identifier.
     * @param edits An array of text edits.
     */
    function set(uri:Uri, edits:Array<TextEdit>):Void;

    /**
     * Get the text edits for a resource.
     *
     * @param uri A resource identifier.
     * @return An array of text edits.
     */
    function get(uri:Uri):Array<TextEdit>;

    /**
     * Get all text edits grouped by resource.
     *
     * @return An array of `[Uri, TextEdit[]]`-tuples.
     */
    function entries():Array<WorkspaceEditEntriesTuple>;
}

@:dce
abstract WorkspaceEditEntriesTuple(Array<Any>) to Array<Any> {
    public var uri(get,never):Uri;
    public var edits(get,never):Array<TextEdit>;
    @:extern inline function get_uri():Uri return this[0];
    @:extern inline function get_edits():Array<TextEdit> return this[1];
}
