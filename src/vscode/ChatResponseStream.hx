package vscode;

/**
 * The ChatResponseStream is how a participant is able to return content to the chat view. It provides several methods for streaming different types of content
 * which will be rendered in an appropriate way in the chat view. A participant can use the helper method for the type of content it wants to return, or it
 * can instantiate a {@link ChatResponsePart} and use the generic {@link ChatResponseStream.push} method to return it.
 */
typedef ChatResponseStream = {
	/**
	 * Push a markdown part to this stream. Short-hand for
	 * `push(new ChatResponseMarkdownPart(value))`.
	 *
	 * @see {@link ChatResponseStream.push}
	 * @param value A markdown string or a string that should be interpreted as markdown. The boolean form of {@link MarkdownString.isTrusted} is NOT supported.
	 */
	function markdown(value:EitherType<String, MarkdownString>):Void;

	/**
	 * Push an anchor part to this stream. Short-hand for
	 * `push(new ChatResponseAnchorPart(value, title))`.
	 * An anchor is an inline reference to some type of resource.
	 *
	 * @param value A uri or location.
	 * @param title An optional title that is rendered with value.
	 */
	function anchor(value:EitherType<Uri, Location>, ?title:String):Void;

	/**
	 * Push a command button part to this stream. Short-hand for
	 * `push(new ChatResponseCommandButtonPart(value, title))`.
	 *
	 * @param command A Command that will be executed when the button is clicked.
	 */
	function button(command:Command):Void;

	/**
	 * Push a filetree part to this stream. Short-hand for
	 * `push(new ChatResponseFileTreePart(value))`.
	 *
	 * @param value File tree data.
	 * @param baseUri The base uri to which this file tree is relative.
	 */
	function filetree(value:Array<ChatResponseFileTree>, baseUri:Uri):Void;

	/**
	 * Push a progress part to this stream. Short-hand for
	 * `push(new ChatResponseProgressPart(value))`.
	 *
	 * @param value A progress message
	 */
	function progress(value:String):Void;

	/**
	 * Push a reference to this stream. Short-hand for
	 * `push(new ChatResponseReferencePart(value))`.
	 *
	 * *Note* that the reference is not rendered inline with the response.
	 *
	 * @param value A uri or location
	 * @param iconPath Icon for the reference shown in UI
	 */
	function reference(value:EitherType<Uri, Location>, ?iconPath:IconPath):Void;

	/**
	 * Pushes a part to this stream.
	 *
	 * @param part A response part, rendered or metadata
	 */
	function push(part:ChatResponsePart):Void;
}
