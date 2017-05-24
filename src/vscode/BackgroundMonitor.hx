package vscode;

import js.RegExp;
import haxe.extern.EitherType;

/**
 * A description to control the activity of a problem matcher
 * watching a background task.
 */
typedef BackgroundMonitor = {
    /**
     * If set to true the monitor is in active mode when the task
     * starts. This is equals of issuing a line that matches the
     * beginPattern.
     */
    @:optional var activeOnStart:Bool;

    /**
     * If matched in the output the start of a background activity is signaled.
     */
    var beginsPattern:EitherType<RegExp, BackgroundPattern>;

    /**
     * If matched in the output the end of a background activity is signaled.
     */
    var endsPattern:EitherType<RegExp, BackgroundPattern>;
}
