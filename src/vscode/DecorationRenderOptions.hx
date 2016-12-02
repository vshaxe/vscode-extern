package vscode;

/**
 * Represents rendering styles for a [text editor decoration](#TextEditorDecorationType).
 */
typedef DecorationRenderOptions = {
    >ThemableDecorationRenderOptions,

    /**
     * Should the decoration be rendered also on the whitespace after the line text.
     * Defaults to `false`.
     */
    @:optional var isWholeLine:Bool;

    /**
     * The position in the overview ruler where the decoration should be rendered.
     */
    @:optional var overviewRulerLane:OverviewRulerLane;

    /**
     * Overwrite options for light themes.
     */
    @:optional var light:ThemableDecorationRenderOptions;

    /**
     * Overwrite options for dark themes.
     */
    @:optional var dark:ThemableDecorationRenderOptions;
}
