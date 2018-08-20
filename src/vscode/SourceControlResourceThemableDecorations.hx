package vscode;

/**
 * The theme-aware decorations for a
 * [source control resource state](#SourceControlResourceState).
 */
typedef SourceControlResourceThemableDecorations = {
	/**
	 * The icon path for a specific
	 * [source control resource state](#SourceControlResourceState).
	 */
	@:optional var iconPath(default, null):EitherType<String, Uri>;
}
