package vscode;

import vscode.TerminalShellExecution.AsyncIterable;

/**
 * When this is returned in {@link PreparedToolInvocation}, the user will be asked to confirm before running the tool. These
 * messages will be shown with buttons that say "Continue" and "Cancel".
 */
typedef LanguageModelToolConfirmationMessages = {
	/**
	 * The title of the confirmation message.
	 */
	var title:String;

	/**
	 * The body of the confirmation message.
	 */
	var message:EitherType<String, MarkdownString>;
}
