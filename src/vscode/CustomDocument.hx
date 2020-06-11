package vscode;

/**
 * Represents a custom document used by a [`CustomEditorProvider`](#CustomEditorProvider).
 *
 * Custom documents are only used within a given `CustomEditorProvider`. The lifecycle of a `CustomDocument` is
 * managed by VS Code. When no more references remain to a `CustomDocument`, it is disposed of.
 */
typedef CustomDocument = {
	/**
	 * The associated uri for this document.
	 */
	final uri:Uri;

	/**
	 * Dispose of the custom document.
	 *
	 * This is invoked by VS Code when there are no more references to a given `CustomDocument` (for example when
	 * all editors associated with the document have been closed.)
	 */
	function dispose():Void;
}
