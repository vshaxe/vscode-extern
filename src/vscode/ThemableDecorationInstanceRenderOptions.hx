package vscode;

typedef ThemableDecorationInstanceRenderOptions = {
	/**
	 * Defines the rendering options of the attachment that is inserted before the decorated text.
	 */
	var ?before:ThemableDecorationAttachmentRenderOptions;

	/**
	 * Defines the rendering options of the attachment that is inserted after the decorated text.
	 */
	var ?after:ThemableDecorationAttachmentRenderOptions;
}
