package vscode;

/**
 * The base class of all breakpoint types.
 */
@:jsRequire("vscode", "Breakpoint")
extern class Breakpoint {
    /**
     * Is breakpoint enabled.
     */
    var enabled(default,never):Bool;
    /**
     * An optional expression for conditional breakpoints.
     */
    var condition(default,never):Null<String>;
    /**
     * An optional expression that controls how many hits of the breakpoint are ignored.
     */
    var hitCondition(default,never):Null<String>;

    private function new(?enabled:Bool, ?condition:String, ?hitCondition:String);
}