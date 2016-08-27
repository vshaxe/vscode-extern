package vscode;

import js.Promise.Thenable;
import haxe.extern.EitherType;

/**
 * The document link provider defines the contract between extensions and feature of showing
 * links in the editor.
 */
typedef DocumentLinkProvider = {
	/**
	 * @param document The document in which the command was invoked.
	 * @param token A cancellation token.
	 * @return An array of [document links](#DocumentLink) or a thenable that resolves to such. The lack of a result
	 *  can be signaled by returning `undefined`, `null`, or an empty array.
	 */
	function provideDocumentLinks(document:TextDocument, token:CancellationToken):EitherType<Array<DocumentLink>, Thenable<Array<DocumentLink>>>;
}
