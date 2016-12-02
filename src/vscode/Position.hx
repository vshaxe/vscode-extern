package vscode;

/**
 * Represents a line and character position, such as
 * the position of the cursor.
 *
 * Position objects are __immutable__. Use the [with](#Position.with) or
 * [translate](#Position.translate) methods to derive new positions
 * from an existing position.
 */
@:jsRequire("vscode", "Position")
extern class Position {
    /**
     * The zero-based line value.
     * @readonly
     */
    var line(default,null):Int;

    /**
     * The zero-based character value.
     * @readonly
     */
    var character(default,null):Int;

    /**
     * @param line A zero-based line value.
     * @param character A zero-based character value.
     */
    function new(line:Int, character:Int):Void;

    /**
     * Check if `other` is before this position.
     *
     * @param other A position.
     * @return `true` if position is on a smaller line
     * or on the same line on a smaller character.
     */
    function isBefore(other:Position):Bool;

    /**
     * Check if `other` is before or equal to this position.
     *
     * @param other A position.
     * @return `true` if position is on a smaller line
     * or on the same line on a smaller or equal character.
     */
    function isBeforeOrEqual(other:Position):Bool;

    /**
     * Check if `other` is after this position.
     *
     * @param other A position.
     * @return `true` if position is on a greater line
     * or on the same line on a greater character.
     */
    function isAfter(other:Position):Bool;

    /**
     * Check if `other` is after or equal to this position.
     *
     * @param other A position.
     * @return `true` if position is on a greater line
     * or on the same line on a greater or equal character.
     */
    function isAfterOrEqual(other:Position):Bool;

    /**
     * Check if `other` equals this position.
     *
     * @param other A position.
     * @return `true` if the line and character of the given position are equal to
     * the line and character of this position.
     */
    function isEqual(other:Position):Bool;

    /**
     * Compare this to `other`.
     *
     * @param other A position.
     * @return A number smaller than zero if this position is before the given position,
     * a number greater than zero if this position is after the given position, or zero when
     * this and the given position are equal.
     */
    function compareTo(other:Position):Int;

    /**
     * Create a new position relative to this position.
     *
     * @param lineDelta Delta value for the line value, default is `0`.
     * @param characterDelta Delta value for the character value, default is `0`.
     * @return A position which line and character is the sum of the current line and
     * character and the corresponding deltas.
     */
    // TODO overload plox
    // /**
    //  * Derived a new position relative to this position.
    //  *
    //  * @param change An object that describes a delta to this position.
    //  * @return A position that reflects the given delta. Will return `this` position if the change
    //  * is not changing anything.
    //  */
    @:overload(function(change:{?lineDelta:Int, ?characterDelta:Int}):Position {})
    function translate(?lineDelta:Int, ?characterDelta:Int):Position;

    /**
     * Create a new position derived from this position.
     *
     * @param line Value that should be used as line value, default is the [existing value](#Position.line)
     * @param character Value that should be used as character value, default is the [existing value](#Position.character)
     * @return A position where line and character are replaced by the given values.
     */
    @:overload(function(change:{?line:Int, ?character:Int}):Position {})
    function with(?line:Int, ?character:Int):Position;
}
