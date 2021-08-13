package vscode;

/**
 * The theme-aware decorations for a
 * {@link SourceControlResourceState source control resource state}.
 */
typedef SourceControlResourceThemableDecorations = {
	/**
	 * The icon path for a specific
	 * {@link SourceControlResourceState source control resource state}.
	 */
	var ?iconPath(default, null):EitherType<String, EitherType<Uri, ThemeIcon>>;
}
