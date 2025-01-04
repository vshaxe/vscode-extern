package vscode;

/**
 * A memento represents a storage utility. It can store and retrieve
 * values.
 */
@:jsRequire("vscode", "Memento")
extern class Memento {
	/**
	 * Returns the stored keys.
	 *
	 * @returns The stored keys.
	 */
	function keys():ReadOnlyArray<String>;

	/**
	 * Return a value.
	 *
	 * @param key A string.
	 * @returns The stored value or `undefined`.
	 */
	overload function get<T>(key:String):Null<T>;

	/**
	 * Return a value.
	 *
	 * @param key A string.
	 * @param defaultValue A value that should be returned when there is no
	 * value (`undefined`) with the given key.
	 * @returns The stored value or the defaultValue.
	 */
	overload function get<T>(key:String, defaultValue:T):T;

	/**
	 * Store a value. The value must be JSON-stringifyable.
	 *
	 * *Note* that using `undefined` as value removes the key from the underlying
	 * storage.
	 *
	 * @param key A string.
	 * @param value A value. MUST not contain cyclic references.
	 */
	function update(key:String, value:Any):Thenable<Void>;
}
