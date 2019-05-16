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

	/**
	 * Mappings of localhost ports used inside the webview.
	 *
	 * Port mapping allow webviews to transparently define how localhost ports are resolved. This can be used
	 * to allow using a static localhost port inside the webview that is resolved to random port that a service is
	 * running on.
	 *
	 * If a webview accesses localhost content, we recomend that you specify port mappings even if
	 * the `webviewPort` and `extensionHostPort` ports are the same.
	 */
	@:optional var portMapping(default, null):ReadonlyArray<WebviewPortMapping>;
}
