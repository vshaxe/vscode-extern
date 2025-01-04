package vscode;

/**
 * A request to a chat participant.
 */
typedef ChatRequest = {
	/**
	 * The prompt as entered by the user.
	 *
	 * Information about references used in this request is stored in {@link ChatRequest.references}.
	 *
	 * *Note* that the {@link ChatParticipant.name name} of the participant and the {@link ChatCommand.name command}
	 * are not part of the prompt.
	 */
	var prompt(default, null):String;

	/**
	 * The name of the {@link ChatCommand command} that was selected for this request.
	 */
	var command(default, null):Null<String>;

	/**
	 * The list of references and their values that are referenced in the prompt.
	 *
	 * *Note* that the prompt contains references as authored and that it is up to the participant
	 * to further modify the prompt, for instance by inlining reference values or creating links to
	 * headings which contain the resolved values. References are sorted in reverse by their range
	 * in the prompt. That means the last reference in the prompt is the first in this list. This simplifies
	 * string-manipulation of the prompt.
	 */
	var references(default, null):ReadOnlyArray<ChatPromptReference>;

	/**
	 * The list of tools that the user attached to their request.
	 *
	 * When a tool reference is present, the chat participant should make a chat request using
	 * {@link LanguageModelChatToolMode.Required} to force the language model to generate input for the tool. Then, the
	 * participant can use {@link lm.invokeTool} to use the tool attach the result to its request for the user's prompt. The
	 * tool may contribute useful extra context for the user's request.
	 */
	var toolReferences(default, null):ReadOnlyArray<ChatLanguageModelToolReference>;

	/**
	 * A token that can be passed to {@link lm.invokeTool} when invoking a tool inside the context of handling a chat request.
	 * This associates the tool invocation to a chat session.
	 */
	var toolInvocationToken(default, null):ChatParticipantToolToken;

	/**
	 * This is the model that is currently selected in the UI. Extensions can use this or use {@link chat.selectChatModels} to
	 * pick another model. Don't hold onto this past the lifetime of the request.
	 */
	var model(default, null):LanguageModelChat;
}
