package vscode;

/**
 * Metadata about a registered [`SignatureHelpProvider`](#SignatureHelpProvider).
 */
typedef SignatureHelpProviderMetadata = {
	/**
	 * List of characters that trigger signature help.
	 */
	var triggerCharacters(default, null):ReadonlyArray<String>;

	/**
	 * List of characters that re-trigger signature help.
	 *
	 * These trigger characters are only active when signature help is already showing. All trigger characters
	 * are also counted as re-trigger characters.
	 */
	var retriggerCharacters(default, null):ReadonlyArray<String>;
}
