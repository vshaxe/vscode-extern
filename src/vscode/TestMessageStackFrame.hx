package vscode;

/**
 * A stack frame found in the {@link TestMessage.stackTrace}.
 */
@:jsRequire("vscode", "TestMessageStackFrame")
extern class TestMessageStackFrame {
	/**
	 * The location of this stack frame. This should be provided as a URI if the
	 * location of the call frame can be accessed by the editor.
	 */
	var uri:Null<Uri>;

	/**
	 * Position of the stack frame within the file.
	 */
	var position:Null<Position>;

	/**
	 * The name of the stack frame, typically a method or function name.
	 */
	var label:String;

	/**
	 * @param label The name of the stack frame
	 * @param file The file URI of the stack frame
	 * @param position The position of the stack frame within the file
	 */
	function new(label:String, ?uri:Uri, ?position:Position);
}
