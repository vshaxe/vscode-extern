package vscode;

/**
 * A uri handler is responsible for handling system-wide [uris](#Uri).
 *
 * @see [window.registerUriHandler](#window.registerUriHandler).
 */
typedef UriHandler = {
	/**
	 * Handle the provided system-wide [uri](#Uri).
	 *
	 * @see [window.registerUriHandler](#window.registerUriHandler).
	 */
	function handleUri(uri:Uri):ProviderResult<Void>;
}
