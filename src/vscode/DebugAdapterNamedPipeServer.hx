package vscode;

/**
 * Represents a debug adapter running as a Named Pipe (on Windows)/UNIX Domain Socket (on non-Windows) based server.
 */
@:jsRequire("vscode", "DebugAdapterNamedPipeServer")
extern class DebugAdapterNamedPipeServer {
	/**
	 * The path to the NamedPipe/UNIX Domain Socket.
	 */
	var path(default, null):String;

	/**
	 * Create a description for a debug adapter running as a Named Pipe (on Windows)/UNIX Domain Socket (on non-Windows) based server.
	 */
	function new(path:String);
}
