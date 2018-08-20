package vscode;

/**
 * An source control resource state represents the state of an underlying workspace
 * resource within a certain [source control group](#SourceControlResourceGroup).
 */
typedef SourceControlResourceState = {
	/**
	 * The [uri](#Uri) of the underlying resource inside the workspace.
	 */
	var resourceUri(default, null):Uri;

	/**
	 * The [command](#Command) which should be run when the resource
	 * state is open in the Source Control viewlet.
	 */
	@:optional var command(default, null):Command;

	/**
	 * The [decorations](#SourceControlResourceDecorations) for this source control
	 * resource state.
	 */
	@:optional var decorations(default, null):SourceControlResourceDecorations;
}
