package vscode;

/**
 * Represents a debug adapter running as a socket based server.
 */
@:jsRequire("vscode", "DebugAdapterServer")
extern class DebugAdapterServer {
	/**
	 * The port.
	 */
	var port(default, null):Int;

	/**
	 * The host.
	 */
	var host(default, null):Null<String>;

	/**
	 * Create a description for a debug adapter running as a socket based server.
	 */
	function new(port:Int, ?host:String);
}
