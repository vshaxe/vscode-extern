package vscode;

import vscode.CancellationToken;
import vscode.Position;
import vscode.ProviderResult;
import vscode.TextDocument;
import vscode.TypeHierarchyItem;

typedef TypeHierarchyProvider = {
	/**
	 * Bootstraps type hierarchy by returning the item that is denoted by the given document
	 * and position. This item will be used as entry into the type graph. Providers should
	 * return `undefined` or `null` when there is no item at the given location.
	 *
	 * @param document The document in which the command was invoked.
	 * @param position The position at which the command was invoked.
	 * @param token A cancellation token.
	 * @returns One or multiple type hierarchy items or a thenable that resolves to such. The lack of a result can be
	 * signaled by returning `undefined`, `null`, or an empty array.
	 */
	@:overload(function(document:TextDocument, position:Position, token:CancellationToken):ProviderResult<Array<TypeHierarchyItem>> {})
	function prepareTypeHierarchy(document:TextDocument, position:Position, token:CancellationToken):ProviderResult<TypeHierarchyItem>;

	/**
	 * Provide all supertypes for an item, e.g all types from which a type is derived/inherited. In graph terms this describes directed
	 * and annotated edges inside the type graph, e.g the given item is the starting node and the result is the nodes
	 * that can be reached.
	 *
	 * @param item The hierarchy item for which super types should be computed.
	 * @param token A cancellation token.
	 * @returns A set of direct supertypes or a thenable that resolves to such. The lack of a result can be
	 * signaled by returning `undefined` or `null`.
	 */
	function provideTypeHierarchySupertypes(item:TypeHierarchyItem, token:CancellationToken):ProviderResult<Array<TypeHierarchyItem>>;

	/**
	 * Provide all subtypes for an item, e.g all types which are derived/inherited from the given item. In
	 * graph terms this describes directed and annotated edges inside the type graph, e.g the given item is the starting
	 * node and the result is the nodes that can be reached.
	 *
	 * @param item The hierarchy item for which subtypes should be computed.
	 * @param token A cancellation token.
	 * @returns A set of direct subtypes or a thenable that resolves to such. The lack of a result can be
	 * signaled by returning `undefined` or `null`.
	 */
	function provideTypeHierarchySubtypes(item:TypeHierarchyItem, token:CancellationToken):ProviderResult<Array<TypeHierarchyItem>>;
}
