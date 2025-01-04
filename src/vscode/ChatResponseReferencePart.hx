package vscode;

/**
 * Represents a part of a chat response that is a reference, rendered separately from the content.
 */
@:jsRequire("vscode", "ChatResponseReferencePart")
extern class ChatResponseReferencePart {
	/**
	 * The reference target.
	 */
	var value:EitherType<Uri, Location>;

	/**
	 * The icon for the reference.
	 */
	var iconPath:Null<IconPath>;

	/**
	 * Create a new ChatResponseReferencePart.
	 * @param value A uri or location
	 * @param iconPath Icon for the reference shown in UI
	 */
	function new(value:EitherType<Uri, Location>, ?iconPath:IconPath);
}
