package vscode;

/**
 * The ExtensionMode is provided on the `ExtensionContext` and indicates the
 * mode the specific extension is running in.
 */
@:jsRequire("vscode", "ExtensionMode")
extern enum abstract ExtensionMode(Int) {
	/**
	 * The extension is installed normally (for example, from the marketplace
	 * or VSIX) in the editor.
	 */
	var Production;

	/**
	 * The extension is running from an `--extensionDevelopmentPath` provided
	 * when launching the editor.
	 */
	var Development;

	/**
	 * The extension is running from an `--extensionTestsPath` and
	 * the extension host is running unit tests.
	 */
	var Test;
}
