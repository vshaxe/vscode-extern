package vscode;

typedef ChatResponsePart = EitherType<ChatResponseMarkdownPart,
	EitherType<ChatResponseFileTreePart,
		EitherType<ChatResponseAnchorPart, EitherType<ChatResponseProgressPart, EitherType<ChatResponseReferencePart, ChatResponseCommandButtonPart>>>>>;
