package vscode;

/**
 * Content settings for a webview.
 */
typedef WebviewOptions = {
	/**
	 * Controls whether scripts are enabled in the webview content or not.
	 *
	 * Defaults to false (scripts-disabled).
	 */
	@:optional var enableScripts(default, null):Bool;

	/**
	 * Controls whether command uris are enabled in webview content or not.
	 *
	 * Defaults to false.
	 */
	@:optional var enableCommandUris(default, null):Bool;

	/**
	 * Root paths from which the webview can load local (filesystem) resources using the `vscode-resource:` scheme.
	 *
	 * Default to the root folders of the current workspace plus the extension's install directory.
	 *
	 * Pass in an empty array to disallow access to any local resources.
	 */
	@:optional var localResourceRoots(default, null):ReadonlyArray<Uri>;
}
