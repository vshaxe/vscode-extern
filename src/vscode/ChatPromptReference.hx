package vscode;

/**
 * A reference to a value that the user added to their chat request.
 */
typedef ChatPromptReference = {
	/**
	 * A unique identifier for this kind of reference.
	 */
	var id(default, null):String;

	/**
	 * The start and end index of the reference in the {@link ChatRequest.prompt prompt}. When undefined, the reference was not part of the prompt text.
	 *
	 * *Note* that the indices take the leading `#`-character into account which means they can
	 * used to modify the prompt as-is.
	 */
	var ?range(default, null):{
		start:Int,
		end:Int
	};

	/**
	 * A description of this value that could be used in an LLM prompt.
	 */
	var ?modelDescription(default, null):String;

	/**
	 * The value of this reference. The `string | Uri | Location` types are used today, but this could expand in the future.
	 */
	var value(default, null):Null<EitherType<String, EitherType<Uri, Location>>>;
}
