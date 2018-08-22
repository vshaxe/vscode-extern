package vscode;

/**
 * A workspace edit is a collection of textual and files changes for
 * multiple resources and documents.
 *
 * Use the [applyEdit](#workspace.applyEdit)-function to apply a workspace edit.
 */
@:jsRequire("vscode", "WorkspaceEdit")
extern class WorkspaceEdit {
	function new();

	/**
	 * The number of affected resources of textual or resource changes.
	 */
	var size(default, null):Int;

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
	 * Check if a text edit for a resource exists.
	 *
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
	 * Create a regular file.
	 *
	 * @param uri Uri of the new file..
	 * @param options Defines if an existing file should be overwritten or be
	 * ignored. When overwrite and ignoreIfExists are both set overwrite wins.
	 */
	function createFile(uri:Uri, ?options:{?overwrite:Bool, ?ignoreIfExists:Bool}):Void;

	/**
	 * Delete a file or folder.
	 *
	 * @param uri The uri of the file that is to be deleted.
	 */
	function deleteFile(uri:Uri, ?options:{?recursive:Bool, ?ignoreIfNotExists:Bool}):Void;

	/**
	 * Rename a file or folder.
	 *
	 * @param oldUri The existing file.
	 * @param newUri The new location.
	 * @param options Defines if existing files should be overwritten or be
	 * ignored. When overwrite and ignoreIfExists are both set overwrite wins.
	 */
	function renameFile(oldUri:Uri, newUri:Uri, ?options:{?overwrite:Bool, ?ignoreIfExists:Bool}):Void;

	/**
	 * Get all text edits grouped by resource.
	 *
	 * @return A shallow copy of `[Uri, TextEdit[]]`-tuples.
	 */
	function entries():Array<WorkspaceEditEntriesTuple>;
}

@:dce
abstract WorkspaceEditEntriesTuple(Array<Any>) to Array<Any> {
	public var uri(get, never):Uri;
	public var edits(get, never):Array<TextEdit>;

	@:extern inline function get_uri():Uri
		return this[0];

	@:extern inline function get_edits():Array<TextEdit>
		return this[1];
}
