package vscode;

/**
 * Provides a terminal profile for the contributed terminal profile when launched via the UI or
 * command.
 */
typedef TerminalProfileProvider = {
	/**
	 * Provide the terminal profile.
	 * @param token A cancellation token that indicates the result is no longer needed.
	 * @returns The terminal profile.
	 */
	function provideTerminalProfile(token:CancellationToken):ProviderResult<TerminalProfile>;
}
