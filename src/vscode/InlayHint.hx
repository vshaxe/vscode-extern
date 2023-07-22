package vscode;

/**
 * Inlay hint information.
 */
@:jsRequire("vscode", "InlayHint")
extern class InlayHint {
	/**
	 * The position of this hint.
	 */
	var position:Position;

	/**
	 * The label of this hint. A human readable string or an array of {@link InlayHintLabelPart label parts}.
	 *
	 * *Note* that neither the string nor the label part can be empty.
	 */
	var label:EitherType<String, Array<InlayHintLabelPart>>;

	/**
	 * The tooltip text when you hover over this item.
	 */
	var tooltip:Null<EitherType<String, MarkdownString>>;

	/**
	 * The kind of this hint. The inlay hint kind defines the appearance of this inlay hint.
	 */
	var kind:Null<InlayHintKind>;

	/**
	 * Render padding before the hint. Padding will use the editor's background color,
	 * not the background color of the hint itself. That means padding can be used to visually
	 * align/separate an inlay hint.
	 */
	var paddingLeft:Null<Bool>;

	/**
	 * Render padding after the hint. Padding will use the editor's background color,
	 * not the background color of the hint itself. That means padding can be used to visually
	 * align/separate an inlay hint.
	 */
	var paddingRight:Null<Bool>;

	/**
	 * Creates a new inlay hint.
	 *
	 * @param position The position of the hint.
	 * @param label The label of the hint.
	 * @param kind The {@link InlayHintKind kind} of the hint.
	 */
	function new(position:Position, label:EitherType<String, Array<InlayHintLabelPart>>, ?kind:Null<InlayHintKind>);
}
