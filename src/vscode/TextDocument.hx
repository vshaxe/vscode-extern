package vscode;

import js.lib.RegExp;

/**
 * Represents a text document, such as a source file. Text documents have
 * {@link TextLine lines} and knowledge about an underlying resource like a file.
 */
@:jsRequire("vscode", "TextDocument")
extern class TextDocument {
	/**
	 * The associated uri for this document.
	 *
	 * *Note* that most documents use the `file`-scheme, which means they are files on disk. However, **not** all documents are
	 * saved on disk and therefore the `scheme` must be checked before trying to access the underlying file or siblings on disk.
	 *
	 * @see {@link FileSystemProvider}
	 * @see {@link TextDocumentContentProvider}
	 */
	var uri(default, null):Uri;

	/**
	 * The file system path of the associated resource. Shorthand
	 * notation for {@link TextDocument.uri TextDocument.uri.fsPath}. Independent of the uri scheme.
	 */
	var fileName(default, null):String;

	/**
	 * Is this document representing an untitled file which has never been saved yet. *Note* that
	 * this does not mean the document will be saved to disk, use {@linkcode Uri.scheme}
	 * to figure out where a document will be {@link FileSystemProvider saved}, e.g. `file`, `ftp` etc.
	 */
	var isUntitled(default, null):Bool;

	/**
	 * The identifier of the language associated with this document.
	 */
	var languageId(default, null):String;

	/**
	 * The version number of this document (it will strictly increase after each
	 * change, including undo/redo).
	 */
	var version(default, null):Int;

	/**
	 * `true` if there are unpersisted changes.
	 */
	var isDirty(default, null):Bool;

	/**
	 * `true` if the document has been closed. A closed document isn't synchronized anymore
	 * and won't be re-used when the same resource is opened again.
	 */
	var isClosed(default, null):Bool;

	/**
	 * Save the underlying file.
	 *
	 * @returns A promise that will resolve to `true` when the file
	 * has been saved. If the save failed, will return `false`.
	 */
	function save():Thenable<Bool>;

	/**
	 * The {@link EndOfLine end of line} sequence that is predominately
	 * used in this document.
	 */
	var eol(default, null):EndOfLine;

	/**
	 * The number of lines in this document.
	 */
	var lineCount(default, null):Int;

	/**
	 * Returns a text line denoted by the line number. Note
	 * that the returned object is *not* live and changes to the
	 * document are not reflected.
	 *
	 * @param line A line number in `[0, lineCount)`.
	 * @returns A {@link TextLine line}.
	 */
	overload function lineAt(line:Int):TextLine;

	/**
	 * Returns a text line denoted by the position. Note
	 * that the returned object is *not* live and changes to the
	 * document are not reflected.
	 *
	 * The position will be {@link TextDocument.validatePosition adjusted}.
	 *
	 * @see {@link TextDocument.lineAt}
	 *
	 * @param position A position.
	 * @returns A {@link TextLine line}.
	 */
	overload function lineAt(position:Position):TextLine;

	/**
	 * Converts the position to a zero-based offset.
	 *
	 * The position will be {@link TextDocument.validatePosition adjusted}.
	 *
	 * @param position A position.
	 * @returns A valid zero-based offset.
	 */
	function offsetAt(position:Position):Int;

	/**
	 * Converts a zero-based offset to a position.
	 *
	 * @param offset A zero-based offset.
	 * @returns A valid {@link Position}.
	 */
	function positionAt(offset:Int):Position;

	/**
	 * Get the text of this document. A substring can be retrieved by providing
	 * a range. The range will be {@link TextDocument.validateRange adjusted}.
	 *
	 * @param range Include only the text included by the range.
	 * @returns The text inside the provided range or the entire text.
	 */
	function getText(?range:Range):String;

	/**
	 * Get a word-range at the given position. By default words are defined by
	 * common separators, like space, -, _, etc. In addition, per language custom
	 * [word definitions] can be defined. It
	 * is also possible to provide a custom regular expression.
	 *
	 * * *Note 1:* A custom regular expression must not match the empty string and
	 * if it does, it will be ignored.
	 * * *Note 2:* A custom regular expression will fail to match multiline strings
	 * and in the name of speed regular expressions should not match words with
	 * spaces. Use {@linkcode TextLine.text} for more complex, non-wordy, scenarios.
	 *
	 * The position will be {@link TextDocument.validatePosition adjusted}.
	 *
	 * @param position A position.
	 * @param regex Optional regular expression that describes what a word is.
	 * @returns A range spanning a word, or `undefined`.
	 */
	function getWordRangeAtPosition(position:Position, ?regex:RegExp):Null<Range>;

	/**
	 * Ensure a range is completely contained in this document.
	 *
	 * @param range A range.
	 * @returns The given range or a new, adjusted range.
	 */
	function validateRange(range:Range):Range;

	/**
	 * Ensure a position is contained in the range of this document.
	 *
	 * @param position A position.
	 * @returns The given position or a new, adjusted position.
	 */
	function validatePosition(position:Position):Position;
}
