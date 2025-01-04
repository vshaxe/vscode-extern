package vscode;

/**
 * Represents the different types of debug adapters
 */
typedef DebugAdapterDescriptor = EitherType<DebugAdapterExecutable,
	EitherType<DebugAdapterServer, EitherType<DebugAdapterNamedPipeServer, DebugAdapterInlineImplementation>>>;
