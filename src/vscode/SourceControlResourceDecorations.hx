package vscode;

/**
 * The decorations for a [source control resource state](#SourceControlResourceState).
 * Can be independently specified for light and dark themes.
 */
typedef SourceControlResourceDecorations = {
    >SourceControlResourceThemableDecorations,

    /**
     * Whether the [source control resource state](#SourceControlResourceState) should
     * be striked-through in the UI.
     */
    @:optional var strikeThrough(default,null):Bool;

    /**
     * Whether the [source control resource state](#SourceControlResourceState) should
     * be faded in the UI.
     */
    @:optional var faded(default,null):Bool;

    /**
     * The light theme decorations.
     */
    @:optional var light(default,null):SourceControlResourceThemableDecorations;

    /**
     * The dark theme decorations.
     */
    @:optional var dark(default,null):SourceControlResourceThemableDecorations;
}
