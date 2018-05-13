package vscode;

@:jsRequire("vscode", "FoldingRange")
extern class FoldingRange {
    /**
     * The zero-based start line of the range to fold. The folded area starts after the line's last character.
     */
    var start:Int;

    /**
     * The zero-based end line of the range to fold. The folded area ends with the line's last character.
     */
    var end:Int;

    /**
     * Describes the [Kind](#FoldingRangeKind) of the folding range such as [Comment](#FoldingRangeKind.Comment) or
     * [Region](#FoldingRangeKind.Region). The kind is used to categorize folding ranges and used by commands
     * like 'Fold all comments'. See
     * [FoldingRangeKind](#FoldingRangeKind) for an enumeration of all kinds.
     */
    var kind:Null<FoldingRangeKind>;

    /**
     * Creates a new folding range.
     *
     * @param start The start line of the folded range.
     * @param end The end line of the folded range.
     * @param kind The kind of the folding range.
     */
    function new(start:Int, end:Int, ?kind:FoldingRangeKind);
}
