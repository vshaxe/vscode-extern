package vscode;

/**
 * Represents a text selection in an editor.
 */
@:jsRequire("vscode", "Selection")
extern class Selection extends Range {
	/**
	 * The position at which the selection starts.
	 * This position might be before or after [active](#Selection.active).
	 */
	var anchor:Position;

	/**
	 * The position of the cursor.
	 * This position might be before or after [anchor](#Selection.anchor).
	 */
	var active:Position;

	/**
	 * A selection is reversed if [active](#Selection.active).isBefore([anchor](#Selection.anchor)).
	 */
	var isReversed:Bool;

	/**
	 * Create a selection from two positions.
	 *
	 * @param anchor A position.
	 * @param active A position.
	 */
	// /**
	//  * Create a selection from four coordinates.
	//  *
	//  * @param anchorLine A zero-based line value.
	//  * @param anchorCharacter A zero-based character value.
	//  * @param activeLine A zero-based line value.
	//  * @param activeCharacter A zero-based character value.
	//  */
	@:overload(function(anchorLine:Int, anchorCharacter:Int, activeLine:Int, activeCharacter:Int):Void {})
	function new(anchor:Position, active:Position):Void;
}
