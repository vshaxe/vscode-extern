package vscode;

/**
 * The result of a tool call. This is the counterpart of a {@link LanguageModelToolCallPart tool call} and
 * it can only be included in the content of a User message
 */
@:jsRequire("vscode", "LanguageModelToolResultPart")
extern class LanguageModelToolResultPart {
	/**
	 * The ID of the tool call.
	 *
	 * *Note* that this should match the {@link LanguageModelToolCallPart.callId callId} of a tool call part.
	 */
	var callId:String;

	/**
	 * The value of the tool result.
	 */
	var content:Array<EitherType<LanguageModelTextPart, LanguageModelPromptTsxPart>>;

	/**
	 * @param callId The ID of the tool call.
	 * @param content The content of the tool result.
	 */
	function new(callId:String, content:Array<EitherType<LanguageModelTextPart, LanguageModelPromptTsxPart>>);
}
