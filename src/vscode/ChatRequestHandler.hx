package vscode;

typedef ChatRequestHandler = (request:ChatRequest, context:ChatContext, response:ChatResponseStream,
	token:CancellationToken) -> ProviderResult<EitherType<ChatResult, Void>>;
