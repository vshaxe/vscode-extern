package vscode;

/**
 * A range represents an ordered pair of two positions.
 * It is guaranteed that {@link Range.start start}.isBeforeOrEqual({@link Range.end end})
 *
 * Range objects are __immutable__. Use the {@link Range.with with},
 * {@link Range.intersection intersection}, or {@link Range.union union} methods
 * to derive new ranges from an existing range.
 */
@:jsRequire("vscode", "Range")
extern class Range {
	/**
	 * The start position. It is before or equal to {@link Range.end end}.
	 */
	var start(default, null):Position;

	/**
	 * The end position. It is after or equal to {@link Range.start start}.
	 */
	var end(default, null):Position;

	/**
	 * `true` if `start` and `end` are equal.
	 */
	var isEmpty:Bool;

	/**
	 * `true` if `start.line` and `end.line` are equal.
	 */
	var isSingleLine:Bool;

	/**
	 * Create a new range from two positions. If `start` is not
	 * before or equal to `end`, the values will be swapped.
	 *
	 * @param start A position.
	 * @param end A position.
	 */
	// TODO overload plox
	// /**
	//  * Create a new range from number coordinates. It is a shorter equivalent of
	//  * using `new Range(new Position(startLine, startCharacter), new Position(endLine, endCharacter))`
	//  *
	//  * @param startLine A zero-based line value.
	//  * @param startCharacter A zero-based character value.
	//  * @param endLine A zero-based line value.
	//  * @param endCharacter A zero-based character value.
	//  */
	@:overload(function(startLine:Int, startCharacter:Int, endLine:Int, endCharacter:Int):Void {})
	function new(start:Position, end:Position):Void;

	/**
	 * Check if a position or a range is contained in this range.
	 *
	 * @param positionOrRange A position or a range.
	 * @returns `true` if the position or range is inside or equal
	 * to this range.
	 */
	function contains(positionOrRange:EitherType<Position, Range>):Bool;

	/**
	 * Check if `other` equals this range.
	 *
	 * @param other A range.
	 * @returns `true` when start and end are {@link Position.isEqual equal} to
	 * start and end of this range.
	 */
	function isEqual(other:Range):Bool;

	/**
	 * Intersect `range` with this range and returns a new range or `undefined`
	 * if the ranges have no overlap.
	 *
	 * @param range A range.
	 * @returns A range of the greater start and smaller end positions. Will
	 * return undefined when there is no overlap.
	 */
	function intersection(range:Range):Null<Range>;

	/**
	 * Compute the union of `other` with this range.
	 *
	 * @param other A range.
	 * @returns A range of smaller start position and the greater end position.
	 */
	function union(other:Range):Range;

	/**
	 * Derived a new range from this range.
	 *
	 * @param start A position that should be used as start. The default value is the {@link Range.start current start}.
	 * @param end A position that should be used as end. The default value is the {@link Range.end current end}.
	 * @returns A range derived from this range with the given start and end position.
	 * If start and end are not different `this` range will be returned.
	 */
	overload function with(?start:Position, ?end:Position):Range;

	/**
	 * Derived a new range from this range.
	 *
	 * @param change An object that describes a change to this range.
	 * @returns A range that reflects the given change. Will return `this` range if the change
	 * is not changing anything.
	 */
	overload function with(change:{
		/**
		 * New start position, defaults to {@link Range.start current start}
		 */
		?start:Position,
		/**
		 * New end position, defaults to {@link Range.end current end}
		 */
		?end:Position
	}):Range;
}
