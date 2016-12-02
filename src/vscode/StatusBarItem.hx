package vscode;

/**
 * A status bar item is a status bar contribution that can
 * show text and icons and run a command on click.
 */
typedef StatusBarItem = {
    /**
     * The alignment of this item.
     *
     * @readonly
     */
    var alignment(default,null):StatusBarAlignment;

    /**
     * The priority of this item. Higher value means the item should
     * be shown more to the left.
     *
     * @readonly
     */
    var priority(default,null):Float;

    /**
     * The text to show for the entry. You can embed icons in the text by leveraging the syntax:
     *
     * `My text $(icon-name) contains icons like $(icon'name) this one.`
     *
     * Where the icon-name is taken from the [octicon](https://octicons.github.com) icon set, e.g.
     * `light-bulb`, `thumbsup`, `zap` etc.
     */
    var text:String;

    /**
     * The tooltip text when you hover over this entry.
     */
    var tooltip:String;

    /**
     * The foreground color for this entry.
     */
    var color:String;

    /**
     * The identifier of a command to run on click. The command must be
     * [known](#commands.getCommands).
     */
    var command:String;

    /**
     * Shows the entry in the status bar.
     */
    function show():Void;

    /**
     * Hide the entry in the status bar.
     */
    function hide():Void;

    /**
     * Dispose and free associated resources. Call
     * [hide](#StatusBarItem.hide).
     */
    function dispose():Void;
}
