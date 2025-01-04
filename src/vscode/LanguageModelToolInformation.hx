package vscode;

import vscode.TerminalShellExecution.AsyncIterable;

/**
 * Information about a registered tool available in {@link lm.tools}.
 */
typedef LanguageModelToolInformation = {
	/**
	 * A unique name for the tool.
	 */
	var name(default, null):String;

	/**
	 * A description of this tool that may be passed to a language model.
	 */
	var description(default, null):String;

	/**
	 * A JSON schema for the input this tool accepts.
	 */
	var inputSchema(default, null):Null<{}>;

	/**
	 * A set of tags, declared by the tool, that roughly describe the tool's capabilities. A tool user may use these to filter
	 * the set of tools to just ones that are relevant for the task at hand.
	 */
	var tags(default, null):ReadOnlyArray<String>;
}
