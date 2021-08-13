package vscode;

/**
 * A notebook range represents an ordered pair of two cell indices.
 * It is guaranteed that start is less than or equal to end.
 */
@:jsRequire("vscode", "NotebookRange")
extern class NotebookRange {
	/**
	 * The zero-based start index of this range.
	 */
	var start(default, null):Int;

	/**
	 * The exclusive end index of this range (zero-based).
	 */
	var end(default, null):Int;

	/**
	 * `true` if `start` and `end` are equal.
	 */
	var isEmpty(default, null):Bool;

	/**
	 * Create a new notebook range. If `start` is not
	 * before or equal to `end`, the values will be swapped.
	 *
	 * @param start start index
	 * @param end end index.
	 */
	function new(start:Int, end:Int);

	/**
	 * Derive a new range for this range.
	 *
	 * @param change An object that describes a change to this range.
	 * @return A range that reflects the given change. Will return `this` range if the change
	 * is not changing anything.
	 */
	function with(change:{?start:Int, ?end:Int}):NotebookRange;
}
