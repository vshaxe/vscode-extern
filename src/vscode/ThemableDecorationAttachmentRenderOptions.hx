package vscode;

typedef ThemableDecorationAttachmentRenderOptions = {
	/**
	 * Defines a text content that is shown in the attachment. Either an icon or a text can be shown, but not both.
	 */
	@:optional var contentText:String;

	/**
	 * An **absolute path** or an URI to an image to be rendered in the attachment. Either an icon
	 * or a text can be shown, but not both.
	 */
	@:optional var contentIconPath:EitherType<String, Uri>;

	/**
	 * CSS styling property that will be applied to the decoration attachment.
	 */
	@:optional var border:String;

	/**
	 * CSS styling property that will be applied to text enclosed by a decoration.
	 */
	@:optional var borderColor:EitherType<String, ThemeColor>;

	/**
	 * CSS styling property that will be applied to the decoration attachment.
	 */
	@:optional var fontStyle:String;

	/**
	 * CSS styling property that will be applied to the decoration attachment.
	 */
	@:optional var fontWeight:String;

	/**
	 * CSS styling property that will be applied to the decoration attachment.
	 */
	@:optional var textDecoration:String;

	/**
	 * CSS styling property that will be applied to the decoration attachment.
	 */
	@:optional var color:EitherType<String, ThemeColor>;

	/**
	 * CSS styling property that will be applied to the decoration attachment.
	 */
	@:optional var backgroundColor:EitherType<String, ThemeColor>;

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
