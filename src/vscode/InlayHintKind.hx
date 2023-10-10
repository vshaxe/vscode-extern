package vscode;

/**
 * Inlay hint kinds.
 *
 * The kind of an inline hint defines its appearance, e.g the corresponding foreground and background colors are being
 * used.
 */
@:jsRequire("vscode", "InlayHintKind")
extern enum abstract InlayHintKind(Int) {
	/**
	 * An inlay hint that for a type annotation.
	 */
	var Type = 1;

	/**
	 * An inlay hint that is for a parameter.
	 */
	var Parameter = 2;
}
