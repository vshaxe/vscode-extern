package vscode;

typedef DecorationInstanceRenderOptions = ThemableDecorationInstanceRenderOptions & {
	/**
	 * Overwrite options for light themes.
	 */
	var ?light:ThemableDecorationInstanceRenderOptions;

	/**
	 * Overwrite options for dark themes.
	 */
	var ?dark:ThemableDecorationInstanceRenderOptions;
}
