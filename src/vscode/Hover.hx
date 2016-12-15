package vscode;

import haxe.extern.EitherType;

/**
 * A hover represents additional information for a symbol or word. Hovers are
 * rendered in a tooltip-like widget.
 */
@:jsRequire("vscode", "Hover")
extern class Hover {
    /**
     * The contents of this hover.
     */
    var contents:Array<MarkedString>;

    /**
     * The range to which this hover applies. When missing, the
     * editor will use the range at the current position or the
     * current position itself.
     */
    var range:Null<Range>;

    /**
     * Creates a new hover object.
     *
     * @param contents The contents of the hover.
     * @param range The range to which the hover applies.
     */
    function new(contents:EitherType<MarkedString, Array<MarkedString>>, ?range:Range);
}
