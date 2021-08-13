package vscode;

/**
 * Options for creating an {@link AuthenticationProvider}.
 */
typedef AuthenticationProviderOptions = {
	/**
	 * Whether it is possible to be signed into multiple accounts at once with this provider.
	 * If not specified, will default to false.
	 */
	var ?supportsMultipleAccounts(default, null):Bool;
}
