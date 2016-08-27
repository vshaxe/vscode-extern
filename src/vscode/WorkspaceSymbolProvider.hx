package vscode;

import js.Promise.Thenable;
import haxe.extern.EitherType;

/**
 * The workspace symbol provider interface defines the contract between extensions and
 * the [symbol search](https://code.visualstudio.com/docs/editor/editingevolved#_open-symbol-by-name)-feature.
 */
typedef WorkspaceSymbolProvider = {
	/**
	 * Project-wide search for a symbol matching the given query string. It is up to the provider
	 * how to search given the query string, like substring, indexOf etc.
	 *
	 * @param query A non-empty query string.
	 * @param token A cancellation token.
	 * @return An array of document highlights or a thenable that resolves to such. The lack of a result can be
	 * signaled by returning `undefined`, `null`, or an empty array.
	 */
	function provideWorkspaceSymbols(query:String, token:CancellationToken):EitherType<Array<SymbolInformation>, Thenable<Array<SymbolInformation>>>;
}
