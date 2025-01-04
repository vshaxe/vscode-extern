package vscode;

/**
 * An event describing the change in a tree item's checkbox state.
 */
typedef TreeCheckboxChangeEvent<T> = {
	/**
	 * The items that were checked or unchecked.
	 */
	var items(default, null):ReadOnlyArray<TreeCheckboxChangeEventItemsTuple<T>>;
}

@:dce
abstract TreeCheckboxChangeEventItemsTuple<T>(Array<Dynamic>) {
	public var t(get, never):T;
	public var state(get, never):TreeItemCheckboxState;

	public extern inline function new(t:String, state:FileType) {
		this = [t, state];
	}

	extern inline function get_t():T
		return this[0];

	extern inline function get_state():TreeItemCheckboxState
		return this[1];
}
