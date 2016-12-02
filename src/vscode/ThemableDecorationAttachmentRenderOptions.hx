package vscode;

import haxe.extern.EitherType;

typedef ThemableDecorationAttachmentRenderOptions = {
    /**
     * Defines a text content that is shown in the attachment. Either an icon or a text can be shown, but not both.
     */
    @:optional var contentText:String;

    /**
     * An **absolute path** or an URI to an image to be rendered in the attachment. Either an icon
     * or a text can be shown, but not both.
     */
    @:optional var contentIconPath:EitherType<String,Uri>;

    /**
     * CSS styling property that will be applied to the decoration attachment.
     */
    @:optional var border:String;

    /**
     * CSS styling property that will be applied to the decoration attachment.
     */
    @:optional var textDecoration:String;

    /**
     * CSS styling property that will be applied to the decoration attachment.
     */
    @:optional var color:String;

    /**
     * CSS styling property that will be applied to the decoration attachment.
     */
    @:optional var backgroundColor:String;

    /**
     * CSS styling property that will be applied to the decoration attachment.
     */
    @:optional var margin:String;

    /**
     * CSS styling property that will be applied to the decoration attachment.
     */
    @:optional var width:String;

    /**
     * CSS styling property that will be applied to the decoration attachment.
     */
    @:optional var height:String;
}
