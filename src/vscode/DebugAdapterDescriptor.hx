package vscode;

typedef DebugAdapterDescriptor = EitherType<DebugAdapterExecutable, EitherType<DebugAdapterServer, DebugAdapterInlineImplementation>>;
