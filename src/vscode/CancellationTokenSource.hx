package vscode;

/**
 * A cancellation source creates and controls a {@link CancellationToken cancellation token}.
 */
@:jsRequire("vscode", "CancellationTokenSource")
extern class CancellationTokenSource {
	function new();

	/**
	 * The cancellation token of this source.
	 */
	var token:CancellationToken;

	/**
	 * Signal cancellation on the token.
	 */
	function cancel():Void;

	/**
	 * Dispose object and free resources.
	 */
	function dispose():Void;
}
