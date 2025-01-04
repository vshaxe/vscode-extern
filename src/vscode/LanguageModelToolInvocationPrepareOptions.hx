package vscode;

import vscode.TerminalShellExecution.AsyncIterable;

/**
 * Options for {@link LanguageModelTool.prepareInvocation}.
 */
typedef LanguageModelToolInvocationPrepareOptions<T> = {
	/**
	 * The input that the tool is being invoked with.
	 */
	var input:T;
}
