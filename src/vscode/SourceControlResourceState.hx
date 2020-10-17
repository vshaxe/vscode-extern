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
	var ?command(default, null):Command;

	/**
	 * The [decorations](#SourceControlResourceDecorations) for this source control
	 * resource state.
	 */
	var ?decorations(default, null):SourceControlResourceDecorations;

	/**
	 * Context value of the resource state. This can be used to contribute resource specific actions.
	 * For example, if a resource is given a context value as `diffable`. When contributing actions to `scm/resourceState/context`
	 * using `menus` extension point, you can specify context value for key `scmResourceState` in `when` expressions, like `scmResourceState == diffable`.
	 * ```
	 *	"contributes": {
	 *		"menus": {
	 *			"scm/resourceState/context": [
	 *				{
	 *					"command": "extension.diff",
	 *					"when": "scmResourceState == diffable"
	 *				}
	 *			]
	 *		}
	 *	}
	 * ```
	 * This will show action `extension.diff` only for resources with `contextValue` is `diffable`.
	 */
	var ?contextValue(default, null):String;
}
