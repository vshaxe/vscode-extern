package vscode;

import vscode.TerminalShellExecution.AsyncIterable;

/**
 * Options related to tokenization for a tool invocation.
 */
typedef LanguageModelToolTokenizationOptions = {
	/**
	 * If known, the maximum number of tokens the tool should emit in its result.
	 */
	var tokenBudget:Int;

	/**
	 * Count the number of tokens in a message using the model specific tokenizer-logic.
	 * @param text A string.
	 * @param token Optional cancellation token.  See {@link CancellationTokenSource} for how to create one.
	 * @returns A thenable that resolves to the number of tokens.
	 */
	function countTokens(text:String, ?token:CancellationToken):Thenable<Int>;
}
