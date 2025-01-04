package vscode;

/**
 * Represents a part of a chat response that is a file tree.
 */
@:jsRequire("vscode", "ChatResponseFileTreePart")
extern class ChatResponseFileTreePart {
	/**
	 * File tree data.
	 */
	var value:Array<ChatResponseFileTree>;

	/**
	 * The base uri to which this file tree is relative
	 */
	var baseUri:Uri;

	/**
	 * Create a new ChatResponseFileTreePart.
	 * @param value File tree data.
	 * @param baseUri The base uri to which this file tree is relative.
	 */
	function new(value:Array<ChatResponseFileTree>, baseUri:Uri);
}
