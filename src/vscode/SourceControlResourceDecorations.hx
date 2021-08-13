package vscode;

/**
 * The decorations for a {@link SourceControlResourceState source control resource state}.
 * Can be independently specified for light and dark themes.
 */
typedef SourceControlResourceDecorations = SourceControlResourceThemableDecorations & {
	/**
	 * Whether the {@link SourceControlResourceState source control resource state} should
	 * be striked-through in the UI.
	 */
	var ?strikeThrough(default, null):Bool;

	/**
	 * Whether the {@link SourceControlResourceState source control resource state} should
	 * be faded in the UI.
	 */
	var ?faded(default, null):Bool;

	/**
	 * The title for a specific
	 * {@link SourceControlResourceState source control resource state}.
	 */
	var ?tooltip(default, null):String;

	/**
	 * The light theme decorations.
	 */
	var ?light(default, null):SourceControlResourceThemableDecorations;

	/**
	 * The dark theme decorations.
	 */
	var ?dark(default, null):SourceControlResourceThemableDecorations;
}
