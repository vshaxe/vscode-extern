package vscode;

import vscode.CallHierarchyItem;

/**
 * The call hierarchy provider interface describes the contract between extensions
 * and the call hierarchy feature which allows to browse calls and caller of function,
 * methods, constructor etc.
 */
typedef CallHierarchyProvider = {
	/**
	 * Bootstraps call hierarchy by returning the item that is denoted by the given document
	 * and position. This item will be used as entry into the call graph. Providers should
	 * return `undefined` or `null` when there is no item at the given location.
	 *
	 * @param document The document in which the command was invoked.
	 * @param position The position at which the command was invoked.
	 * @param token A cancellation token.
	 * @returns A call hierarchy item or a thenable that resolves to such. The lack of a result can be
	 * signaled by returning `undefined` or `null`.
	 */
	function prepareCallHierarchy(document:TextDocument, position:Position,
		token:CancellationToken):ProviderResult<Null<EitherType<CallHierarchyItem, Array<CallHierarchyItem>>>>;

	/**
	 * Provide all incoming calls for an item, e.g all callers for a method. In graph terms this describes directed
	 * and annotated edges inside the call graph, e.g the given item is the starting node and the result is the nodes
	 * that can be reached.
	 *
	 * @param item The hierarchy item for which incoming calls should be computed.
	 * @param token A cancellation token.
	 * @returns A set of incoming calls or a thenable that resolves to such. The lack of a result can be
	 * signaled by returning `undefined` or `null`.
	 */
	function provideCallHierarchyIncomingCalls(item:CallHierarchyItem, token:CancellationToken):ProviderResult<Null<Array<CallHierarchyIncomingCall>>>;

	/**
	 * Provide all outgoing calls for an item, e.g call calls to functions, methods, or constructors from the given item. In
	 * graph terms this describes directed and annotated edges inside the call graph, e.g the given item is the starting
	 * node and the result is the nodes that can be reached.
	 *
	 * @param item The hierarchy item for which outgoing calls should be computed.
	 * @param token A cancellation token.
	 * @returns A set of outgoing calls or a thenable that resolves to such. The lack of a result can be
	 * signaled by returning `undefined` or `null`.
	 */
	function provideCallHierarchyOutgoingCalls(item:CallHierarchyItem, token:CancellationToken):ProviderResult<Null<Array<CallHierarchyOutgoingCall>>>;
}
