package vscode;

/**
 * A source control resource group is a collection of
 * {@link SourceControlResourceState source control resource states}.
 */
typedef SourceControlResourceGroup = {
	/**
	 * The id of this source control resource group.
	 */
	var id(default, null):String;

	/**
	 * The label of this source control resource group.
	 */
	var label:String;

	/**
	 * Whether this source control resource group is hidden when it contains
	 * no {@link SourceControlResourceState source control resource states}.
	 */
	var ?hideWhenEmpty:Bool;

	/**
	 * This group's collection of
	 * {@link SourceControlResourceState source control resource states}.
	 */
	var resourceStates:Array<SourceControlResourceState>;

	/**
	 * Dispose this source control resource group.
	 */
	function dispose():Void;
}
