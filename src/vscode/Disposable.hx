package vscode;

/**
 * Represents a type which can release resources, such
 * as event listening or a timer.
 */
@:jsRequire("vscode", "Disposable")
extern class Disposable {
	/**
	 * Combine many disposable-likes into one. You can use this method when having objects with
	 * a dispose function which aren't instances of `Disposable`.
	 *
	 * @param disposableLikes Objects that have at least a `dispose`-function member. Note that asynchronous
	 * dispose-functions aren't awaited.
	 * @returns Returns a new disposable which, upon dispose, will
	 * dispose all provided disposables.
	 */
	static function from(disposableLikes:Rest<{
		/**
		 * Function to clean up resources.
		 */
		function dispose():Void;
	}>):Disposable;

	/**
	 * Creates a new disposable that calls the provided function
	 * on dispose.
	 *
	 * *Note* that an asynchronous function is not awaited.
	 *
	 * @param callOnDispose Function that disposes something.
	 */
	function new(callOnDispose:() -> Any):Void;

	/**
	 * Dispose this object.
	 */
	function dispose():Void;
}
