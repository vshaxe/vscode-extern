package vscode;

/**
 * Represents rendering styles for a [text editor decoration](#TextEditorDecorationType).
 */
typedef DecorationRenderOptions = {
	> ThemableDecorationRenderOptions,

	/**
	 * Should the decoration be rendered also on the whitespace after the line text.
	 * Defaults to `false`.
	 */
	@:optional var isWholeLine:Bool;

	/**
	 * Customize the growing behavior of the decoration when edits occur at the edges of the decoration's range.
	 * Defaults to `DecorationRangeBehavior.OpenOpen`.
	 */
	@:optional var rangeBehavior:DecorationRangeBehavior;

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
