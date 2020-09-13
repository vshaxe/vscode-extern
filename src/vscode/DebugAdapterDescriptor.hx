package vscode;

typedef DebugAdapterDescriptor = EitherType<DebugAdapterExecutable,
	EitherType<DebugAdapterServer, EitherType<DebugAdapterNamedPipeServer, DebugAdapterInlineImplementation>>>;
