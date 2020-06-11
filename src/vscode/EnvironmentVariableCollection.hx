package vscode;

/**
 * A collection of mutations that an extension can apply to a process environment.
 */
typedef EnvironmentVariableCollection = {
	/**
	 * Whether the collection should be cached for the workspace and applied to the terminal
	 * across window reloads. When true the collection will be active immediately such when the
	 * window reloads. Additionally, this API will return the cached version if it exists. The
	 * collection will be invalidated when the extension is uninstalled or when the collection
	 * is cleared. Defaults to true.
	 */
	var persistent:Bool;

	/**
	 * Replace an environment variable with a value.
	 *
	 * Note that an extension can only make a single change to any one variable, so this will
	 * overwrite any previous calls to replace, append or prepend.
	 *
	 * @param variable The variable to replace.
	 * @param value The value to replace the variable with.
	 */
	function replace(variable:String, value:String):Void;

	/**
	 * Append a value to an environment variable.
	 *
	 * Note that an extension can only make a single change to any one variable, so this will
	 * overwrite any previous calls to replace, append or prepend.
	 *
	 * @param variable The variable to append to.
	 * @param value The value to append to the variable.
	 */
	function append(variable:String, value:String):Void;

	/**
	 * Prepend a value to an environment variable.
	 *
	 * Note that an extension can only make a single change to any one variable, so this will
	 * overwrite any previous calls to replace, append or prepend.
	 *
	 * @param variable The variable to prepend.
	 * @param value The value to prepend to the variable.
	 */
	function prepend(variable:String, value:String):Void;

	/**
	 * Gets the mutator that this collection applies to a variable, if any.
	 *
	 * @param variable The variable to get the mutator for.
	 */
	function get(variable:String):Null<EnvironmentVariableMutator>;

	/**
	 * Iterate over each mutator in this collection.
	 *
	 * @param callback Function to execute for each entry.
	 * @param thisArg The `this` context used when invoking the handler function.
	 */
	function forEach(callback:(variable:String, mutator:EnvironmentVariableMutator, collection:EnvironmentVariableCollection) -> Any, ?thisArg:Any):Void;

	/**
	 * Deletes this collection's mutator for a variable.
	 *
	 * @param variable The variable to delete the mutator for.
	 */
	function delete(variable:String):Void;

	/**
	 * Clears all mutators from this collection.
	 */
	function clear():Void;
}
