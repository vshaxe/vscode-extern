package vscode;

/**
 * Represents an icon in the UI. This is either an uri, separate uris for the light- and dark-themes,
 * or a {@link ThemeIcon theme icon}.
 */
typedef IconPath = EitherType<Uri, EitherType<{
	/**
	 * The icon path for the light theme.
	 */
	var light:Uri;

	/**
	 * The icon path for the dark theme.
	 */
	var dark:Uri;
}, ThemeIcon>>;
