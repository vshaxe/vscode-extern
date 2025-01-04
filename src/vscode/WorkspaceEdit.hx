package vscode;

import js.lib.Uint8Array;

/**
 * A workspace edit is a collection of textual and files changes for
 * multiple resources and documents.
 *
 * Use the {@link workspace.applyEdit applyEdit}-function to apply a workspace edit.
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
	 * @param metadata Optional metadata for the entry.
	 */
	function replace(uri:Uri, range:Range, newText:String, ?metadata:WorkspaceEditEntryMetadata):Void;

	/**
	 * Insert the given text at the given position.
	 *
	 * @param uri A resource identifier.
	 * @param position A position.
	 * @param newText A string.
	 * @param metadata Optional metadata for the entry.
	 */
	function insert(uri:Uri, position:Position, newText:String, ?metadata:WorkspaceEditEntryMetadata):Void;

	/**
	 * Delete the text at the given range.
	 *
	 * @param uri A resource identifier.
	 * @param range A range.
	 * @param metadata Optional metadata for the entry.
	 */
	function delete(uri:Uri, range:Range, ?metadata:WorkspaceEditEntryMetadata):Void;

	/**
	 * Check if a text edit for a resource exists.
	 *
	 * @param uri A resource identifier.
	 * @returns `true` if the given resource will be touched by this edit.
	 */
	function has(uri:Uri):Bool;

	/**
	 * Set (and replace) text edits or snippet edits for a resource.
	 *
	 * @param uri A resource identifier.
	 * @param edits An array of edits.
	 */
	overload function set(uri:Uri, edits:ReadOnlyArray<EitherType<TextEdit, SnippetTextEdit>>):Void;

	/**
	 * Set (and replace) text edits or snippet edits with metadata for a resource.
	 *
	 * @param uri A resource identifier.
	 * @param edits An array of edits.
	 */
	overload function set(uri:Uri, edits:ReadOnlyArray<WorkspaceEditMetadataTuple>):Void;

	/**
	 * Set (and replace) notebook edits for a resource.
	 *
	 * @param uri A resource identifier.
	 * @param edits An array of edits.
	 */
	overload function set(uri:Uri, edits:ReadOnlyArray<NotebookEdit>):Void;

	/**
	 * Set (and replace) notebook edits with metadata for a resource.
	 *
	 * @param uri A resource identifier.
	 * @param edits An array of edits.
	 */
	overload function set(uri:Uri, edits:ReadOnlyArray<WorkspaceEditNotebookMetadataTuple>):Void;

	/**
	 * Get the text edits for a resource.
	 *
	 * @param uri A resource identifier.
	 * @returns An array of text edits.
	 */
	function get(uri:Uri):Array<TextEdit>;

	/**
	 * Create a regular file.
	 *
	 * @param uri Uri of the new file.
	 * @param options Defines if an existing file should be overwritten or be
	 * ignored. When `overwrite` and `ignoreIfExists` are both set `overwrite` wins.
	 * When both are unset and when the file already exists then the edit cannot
	 * be applied successfully. The `content`-property allows to set the initial contents
	 * the file is being created with.
	 * @param metadata Optional metadata for the entry.
	 */
	function createFile(uri:Uri, ?options:{
		/**
		 * Overwrite existing file. Overwrite wins over `ignoreIfExists`
		 */
		?overwrite:Bool,
		/**
		 * Do nothing if a file with `uri` exists already.
		 */
		?ignoreIfExists:Bool,
		/**
		 * The initial contents of the new file.
		 *
		 * If creating a file from a {@link DocumentDropEditProvider drop operation}, you can
		 * pass in a {@link DataTransferFile} to improve performance by avoiding extra data copying.
		 */
		?contents:EitherType<Uint8Array, DataTransferFile>
	}, ?metadata:WorkspaceEditEntryMetadata):Void;

	/**
	 * Delete a file or folder.
	 *
	 * @param uri The uri of the file that is to be deleted.
	 * @param metadata Optional metadata for the entry.
	 */
	function deleteFile(uri:Uri, ?options:{
		/**
		 * Delete the content recursively if a folder is denoted.
		 */
		?recursive:Bool,
		/**
		 * Do nothing if a file with `uri` exists already.
		 */
		?ignoreIfNotExists:Bool
	}, ?metadata:WorkspaceEditEntryMetadata):Void;

	/**
	 * Rename a file or folder.
	 *
	 * @param oldUri The existing file.
	 * @param newUri The new location.
	 * @param options Defines if existing files should be overwritten or be
	 * ignored. When overwrite and ignoreIfExists are both set overwrite wins.
	 * @param metadata Optional metadata for the entry.
	 */
	function renameFile(oldUri:Uri, newUri:Uri, ?options:{
		/**
		 * Overwrite existing file. Overwrite wins over `ignoreIfExists`
		 */
		?overwrite:Bool,
		/**
		 * Do nothing if a file with `uri` exists already.
		 */
		?ignoreIfExists:Bool
	}, ?metadata:WorkspaceEditEntryMetadata):Void;

	/**
	 * Get all text edits grouped by resource.
	 *
	 * @returns A shallow copy of `[Uri, TextEdit[]]`-tuples.
	 */
	function entries():Array<WorkspaceEditEntriesTuple>;
}

@:dce
abstract WorkspaceEditEntriesTuple(Array<Any>) to Array<Any> {
	public var uri(get, never):Uri;
	public var edits(get, never):Array<TextEdit>;

	extern inline function get_uri():Uri
		return this[0];

	extern inline function get_edits():Array<TextEdit>
		return this[1];
}

@:dce
abstract WorkspaceEditMetadataTuple(Array<Any>) to Array<Any> {
	public var edit(get, never):EitherType<TextEdit, SnippetTextEdit>;
	public var meta(get, never):Null<WorkspaceEditEntryMetadata>;

	extern inline function get_edit():EitherType<TextEdit, SnippetTextEdit>
		return this[0];

	extern inline function get_meta():Null<WorkspaceEditEntryMetadata>
		return this[1];
}

@:dce
abstract WorkspaceEditNotebookMetadataTuple(Array<Any>) to Array<Any> {
	public var edit(get, never):NotebookEdit;
	public var meta(get, never):Null<WorkspaceEditEntryMetadata>;

	extern inline function get_edit():NotebookEdit
		return this[0];

	extern inline function get_meta():Null<WorkspaceEditEntryMetadata>
		return this[1];
}
