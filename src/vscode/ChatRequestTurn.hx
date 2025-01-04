package vscode;

/**
 * Represents a user request in chat history.
 */
@:jsRequire("vscode", "ChatRequestTurn")
extern class ChatRequestTurn {
	/**
	 * The prompt as entered by the user.
	 *
	 * Information about references used in this request is stored in {@link ChatRequestTurn.references}.
	 *
	 * *Note* that the {@link ChatParticipant.name name} of the participant and the {@link ChatCommand.name command}
	 * are not part of the prompt.
	 */
	var prompt(default, null):String;

	/**
	 * The id of the chat participant to which this request was directed.
	 */
	var participant(default, null):String;

	/**
	 * The name of the {@link ChatCommand command} that was selected for this request.
	 */
	var command(default, null):Null<String>;

	/**
	 * The references that were used in this message.
	 */
	var references(default, null):Array<ChatPromptReference>;

	/**
	 * The list of tools were attached to this request.
	 */
	var toolReferences(default, null):ReadOnlyArray<ChatLanguageModelToolReference>;

	/**
	 * @hidden
	 */
	private function new(prompt:String, command:Null<String>, references:Array<ChatPromptReference>, participant:String,
		toolReferences:Array<ChatLanguageModelToolReference>);
}
