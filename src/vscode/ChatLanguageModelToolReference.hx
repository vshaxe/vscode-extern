package vscode;

import vscode.TerminalShellExecution.AsyncIterable;

/**
 * A reference to a tool that the user manually attached to their request, either using the `#`-syntax inline, or as an
 * attachment via the paperclip button.
 */
typedef ChatLanguageModelToolReference = {
	/**
	 * The tool name. Refers to a tool listed in {@link lm.tools}.
	 */
	var name(default, null):String;

	/**
	 * The start and end index of the reference in the {@link ChatRequest.prompt prompt}. When undefined, the reference was
	 * not part of the prompt text.
	 *
	 * *Note* that the indices take the leading `#`-character into account which means they can be used to modify the prompt
	 * as-is.
	 */
	var ?range(default, null):{
		start:Int,
		end:Int
	};
}
