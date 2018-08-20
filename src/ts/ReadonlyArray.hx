package ts;

/**
	An `Array` which cannot be modified.

	TODO: actually make this match TypeScript's ReadonlyArray<T> type? Right now it's just a copy of vshaxe.ReadOnlyArray.
**/
@:dce
abstract ReadonlyArray<T>(Array<T>) from Array<T> {
	public var length(get, never):Int;

	inline function get_length()
		return this.length;

	@:op([]) function arrayAccess(i:Int)
		return this[i];

	/**
		Returns a `copy()` of the underlying array.
	**/
	public inline function get():Array<T> {
		return this.copy();
	}
}
