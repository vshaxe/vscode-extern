package vscode;

/**
 * Represents a type which can release resources, such
 * as event listening or a timer.
 */
@:jsRequire("vscode", "Disposable")
extern class Disposable {
	/**
	 * Combine many disposable-likes into one. Use this method
	 * when having objects with a dispose function which are not
	 * instances of Disposable.
	 *
	 * @param disposableLikes Objects that have at least a `dispose`-function member.
	 * @return Returns a new disposable which, upon dispose, will
	 * dispose all provided disposables.
	 */
	static function from(disposableLikes:Rest<{function dispose():Void;}>):Disposable;

	/**
	 * Creates a new Disposable calling the provided function
	 * on dispose.
	 * @param callOnDispose Function that disposes something.
	 */
	function new(callOnDispose:Function):Void;

	/**
	 * Dispose this object.
	 */
	function dispose():Void;
}
