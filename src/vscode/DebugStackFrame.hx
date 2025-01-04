package vscode;

/**
 * Represents a stack frame in a debug session.
 */
@:jsRequire("vscode", "DebugStackFrame")
extern class DebugStackFrame {
	/**
	 * Debug session for thread.
	 */
	var session(default, null):DebugSession;

	/**
	 * ID of the associated thread in the debug protocol.
	 */
	var threadId(default, null):Int;

	/**
	 * ID of the stack frame in the debug protocol.
	 */
	var frameId(default, null):Int;

	/**
	 * @hidden
	 */
	private function new(session:DebugSession, threadId:Int, frameId:Int);
}
