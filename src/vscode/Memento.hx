package vscode;

import js.Promise.Thenable;

/**
 * A memento represents a storage utility. It can store and retrieve
 * values.
 */
typedef Memento = {
    /**
     * Return a value.
     *
     * @param key A string.
     * @param defaultValue A value that should be returned when there is no
     * value (`undefined`) with the given key.
     * @return The stored value, `undefined`, or the defaultValue.
     */
    @:overload(function<T>(key:String, defaultValue:T):T {})
    function get<T>(key:String):Null<T>;

    /**
     * Store a value. The value must be JSON-stringifyable.
     *
     * @param key A string.
     * @param value A value. MUST not contain cyclic references.
     */
    function update(key:String, value:Any):Thenable<Void>;
}
