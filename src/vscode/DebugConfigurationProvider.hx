package vscode;

/**
 * A debug configuration provider allows to add the initial debug configurations to a newly created launch.json
 * and to resolve a launch configuration before it is used to start a new debug session.
 * A debug configuration provider is registered via #debug.registerDebugConfigurationProvider.
 */
typedef DebugConfigurationProvider = {
	/**
	 * Provides initial [debug configuration](#DebugConfiguration). If more than one debug configuration provider is
	 * registered for the same type, debug configurations are concatenated in arbitrary order.
	 *
	 * @param folder The workspace folder for which the configurations are used or undefined for a folderless setup.
	 * @param token A cancellation token.
	 * @return An array of [debug configurations](#DebugConfiguration).
	 */
	@:optional // TODO: will that work?
	function provideDebugConfigurations(folder:Null<WorkspaceFolder>, ?token:CancellationToken):ProviderResult<Array<DebugConfiguration>>;

	/**
	 * Resolves a [debug configuration](#DebugConfiguration) by filling in missing values or by adding/changing/removing attributes.
	 * If more than one debug configuration provider is registered for the same type, the resolveDebugConfiguration calls are chained
	 * in arbitrary order and the initial debug configuration is piped through the chain.
	 * Returning the value 'undefined' prevents the debug session from starting.
	 * Returning the value 'null' prevents the debug session from starting and opens the underlying debug configuration instead.
	 *
	 * @param folder The workspace folder from which the configuration originates from or undefined for a folderless setup.
	 * @param debugConfiguration The [debug configuration](#DebugConfiguration) to resolve.
	 * @param token A cancellation token.
	 * @return The resolved debug configuration or undefined or null.
	 */
	@:optional // TODO: will that work?
	function resolveDebugConfiguration(folder:Null<WorkspaceFolder>, debugConfiguration:DebugConfiguration, ?token:CancellationToken):ProviderResult<DebugConfiguration>;
}
