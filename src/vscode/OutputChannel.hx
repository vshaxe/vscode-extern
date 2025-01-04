package vscode;

/**
 * An output channel is a container for readonly textual information.
 *
 * To get an instance of an `OutputChannel` use
 * {@link window.createOutputChannel createOutputChannel}.
 */
@:jsRequire("vscode", "OutputChannel")
extern class OutputChannel {
	/**
	 * The human-readable name of this output channel.
	 */
	var name:String;

	/**
	 * Append the given value to the channel.
	 *
	 * @param value A string, falsy values will not be printed.
	 */
	function append(value:String):Void;

	/**
	 * Append the given value and a line feed character
	 * to the channel.
	 *
	 * @param value A string, falsy values will be printed.
	 */
	function appendLine(value:String):Void;

	/**
	 * Replaces all output from the channel with the given value.
	 *
	 * @param value A string, falsy values will not be printed.
	 */
	function replace(value:String):Void;

	/**
	 * Removes all output from the channel.
	 */
	function clear():Void;

	/**
	 * Reveal this channel in the UI.
	 *
	 * @param preserveFocus When `true` the channel will not take focus.
	 */
	overload function show(?preserveFocus:Bool):Void;

	/**
	 * Reveal this channel in the UI.
	 *
	 * @deprecated Use the overload with just one parameter (`show(preserveFocus?: boolean): void`).
	 *
	 * @param column This argument is **deprecated** and will be ignored.
	 * @param preserveFocus When `true` the channel will not take focus.
	 */
	overload function show(?column:ViewColumn, ?preservceFocus:Bool):Void;

	/**
	 * Hide this channel from the UI.
	 */
	function hide():Void;

	/**
	 * Dispose and free associated resources.
	 */
	function dispose():Void;
}
