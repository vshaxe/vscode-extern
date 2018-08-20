package vscode;

/**
 * A breakpoint specified by a source location.
 */
@:jsRequire("vscode", "SourceBreakpoint")
extern class SourceBreakpoint extends Breakpoint {
	/**
	 * The source and line position of this breakpoint.
	 */
	var location(default, never):Location;

	/**
	 * Create a new breakpoint for a source location.
	 */
	function new(location:Location, ?enabled:Bool, ?condition:String, ?hitCondition:String, ?logMessage:String);
}
