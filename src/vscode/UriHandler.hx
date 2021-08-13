package vscode;

/**
 * A uri handler is responsible for handling system-wide {@link Uri uris}.
 *
 * @see {@link window.registerUriHandler}.
 */
typedef UriHandler = {
	/**
	 * Handle the provided system-wide {@link Uri}.
	 *
	 * @see {@link window.registerUriHandler}.
	 */
	function handleUri(uri:Uri):ProviderResult<Void>;
}
