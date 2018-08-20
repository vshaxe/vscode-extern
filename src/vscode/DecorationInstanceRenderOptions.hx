package vscode;

typedef DecorationInstanceRenderOptions = {
	> ThemableDecorationInstanceRenderOptions,

	/**
	 * Overwrite options for light themes.
	 */
	@:optional var light:ThemableDecorationInstanceRenderOptions;

	/**
	 * Overwrite options for dark themes.
	 */
	@:optional var dark:ThemableDecorationInstanceRenderOptions;
}
