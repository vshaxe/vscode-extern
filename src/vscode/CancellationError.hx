package vscode;

/**
 * An error type that should be used to signal cancellation of an operation.
 *
 * This type can be used in response to a {@link CancellationToken cancellation token}
 * being cancelled or when an operation is being cancelled by the
 * executor of that operation.
 */
@:jsRequire("vscode", "CancellationError")
extern class CancellationError extends Error {
	/**
	 * Creates a new cancellation error.
	 */
	function new();
}
