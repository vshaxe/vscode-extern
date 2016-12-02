package vscode;

import haxe.extern.EitherType;

/**
 * Represents options for a specific decoration in a [decoration set](#TextEditorDecorationType).
 */
typedef DecorationOptions = {
    /**
     * Range to which this decoration is applied. The range must not be empty.
     */
    var range:Range;

    /**
     * A message that should be rendered when hovering over the decoration.
     */
    var hoverMessage:EitherType<MarkedString, Array<MarkedString>>;

    /**
     * Render options applied to the current decoration. For performance reasons, keep the
     * number of decoration specific options small, and use decoration types whereever possible.
     */
    @:optional var renderOptions:DecorationInstanceRenderOptions;
}
