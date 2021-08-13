package vscode;

/**
 * A DebugConfigurationProviderTriggerKind specifies when the `provideDebugConfigurations` method of a `DebugConfigurationProvider` is triggered.
 * Currently there are two situations: to provide the initial debug configurations for a newly created launch.json or
 * to provide dynamically generated debug configurations when the user asks for them through the UI (e.g. via the "Select and Start Debugging" command).
 * A trigger kind is used when registering a `DebugConfigurationProvider` with {@link debug.registerDebugConfigurationProvider}.
 */
@:jsRequire("vscode", "DebugConfigurationProviderTriggerKind")
extern enum abstract DebugConfigurationProviderTriggerKind(Int) {
	/**
	 *	`DebugConfigurationProvider.provideDebugConfigurations` is called to provide the initial debug configurations for a newly created launch.json.
	 */
	var Initial;

	/**
	 * `DebugConfigurationProvider.provideDebugConfigurations` is called to provide dynamically generated debug configurations when the user asks for them through the UI (e.g. via the "Select and Start Debugging" command).
	 */
	var Dynamic;
}
