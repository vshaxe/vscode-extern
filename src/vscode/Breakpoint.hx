package vscode;

/**
 * The base class of all breakpoint types.
 */
@:jsRequire("vscode", "Breakpoint")
extern class Breakpoint {
	/**
	 * The unique ID of the breakpoint.
	 */
	var id(default, never):String;

	/**
	 * Is breakpoint enabled.
	 */
	var enabled(default, never):Bool;

	/**
	 * An optional expression for conditional breakpoints.
	 */
	var condition(default, never):Null<String>;

	/**
	 * An optional expression that controls how many hits of the breakpoint are ignored.
	 */
	var hitCondition(default, never):Null<String>;

	/**
	 * An optional message that gets logged when this breakpoint is hit. Embedded expressions within {} are interpolated by the debug adapter.
	 */
	var logMessage(default, never):Null<String>;

	/**
	 * Creates a new breakpoint
	 *
	 * @param enabled Is breakpoint enabled.
	 * @param condition Expression for conditional breakpoints
	 * @param hitCondition Expression that controls how many hits of the breakpoint are ignored
	 * @param logMessage Log message to display when breakpoint is hit
	 */
	private function new(?enabled:Bool, ?condition:String, ?hitCondition:String, ?logMessage:String);
}
