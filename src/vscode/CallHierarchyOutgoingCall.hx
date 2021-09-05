package vscode;

/**
 * Represents an outgoing call, e.g. calling a getter from a method or a method from a constructor etc.
 */
@:jsRequire("vscode", "CallHierarchyOutgoingCall")
extern class CallHierarchyOutgoingCall {
	/**
	 * The item that is called.
	 */
	var to:CallHierarchyItem;

	/**
	 * The range at which this item is called. This is the range relative to the caller, e.g the item
	 * passed to {@linkcode CallHierarchyProvider.provideCallHierarchyOutgoingCalls provideCallHierarchyOutgoingCalls}
	 * and not {@linkcode CallHierarchyOutgoingCall.to this.to}.
	 */
	var fromRanges:Array<Range>;

	/**
	 * Create a new call object.
	 *
	 * @param item The item being called
	 * @param fromRanges The ranges at which the calls appear.
	 */
	function new(item:CallHierarchyItem, fromRanges:Array<Range>);
}
