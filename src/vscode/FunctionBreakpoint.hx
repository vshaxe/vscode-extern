package vscode;

/**
 * A breakpoint specified by a function name.
 */
@:jsRequire("vscode", "FunctionBreakpoint")
extern class FunctionBreakpoint extends Breakpoint {
	/**
	 * The name of the function to which this breakpoint is attached.
	 */
	var functionName(default, never):String;

	/**
	 * Create a new function breakpoint.
	 */
	function new(functionName:String, ?enabled:Bool, ?condition:String, ?hitCondition:String, ?logMessage:String);
}
