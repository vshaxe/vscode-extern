package vscode;

import vscode.TerminalShellExecution.AsyncIterable;

/**
 * The result of a call to {@link LanguageModelTool.prepareInvocation}.
 */
typedef PreparedToolInvocation = {
	/**
	 * A customized progress message to show while the tool runs.
	 */
	var ?invocationMessage:EitherType<String, MarkdownString>;

	/**
	 * The presence of this property indicates that the user should be asked to confirm before running the tool. The user
	 * should be asked for confirmation for any tool that has a side-effect or may potentially be dangerous.
	 */
	var ?confirmationMessages:LanguageModelToolConfirmationMessages;
}
