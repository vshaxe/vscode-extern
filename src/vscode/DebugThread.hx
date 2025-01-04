package vscode;

/**
 * Represents a thread in a debug session.
 */
@:jsRequire("vscode", "DebugThread")
extern class DebugThread {
	/**
	 * Debug session for thread.
	 */
	var session(default, null):DebugSession;

	/**
	 * ID of the associated thread in the debug protocol.
	 */
	var threadId(default, null):Int;

	/**
	 * @hidden
	 */
	private function new(session:DebugSession, threadId:Int);
}
