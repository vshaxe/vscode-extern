package vscode;

/**
 * The decorations for a [source control resource state](#SourceControlResourceState).
 * Can be independently specified for light and dark themes.
 */
typedef SourceControlResourceDecorations = SourceControlResourceThemableDecorations & {
	/**
	 * Whether the [source control resource state](#SourceControlResourceState) should
	 * be striked-through in the UI.
	 */
	var ?strikeThrough(default, null):Bool;

	/**
	 * Whether the [source control resource state](#SourceControlResourceState) should
	 * be faded in the UI.
	 */
	var ?faded(default, null):Bool;

	/**
	 * The title for a specific
	 * [source control resource state](#SourceControlResourceState).
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
