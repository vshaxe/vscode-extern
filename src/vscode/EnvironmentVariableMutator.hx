package vscode;

/**
 * A type of mutation and its value to be applied to an environment variable.
 */
typedef EnvironmentVariableMutator = {
	/**
	 * The type of mutation that will occur to the variable.
	 */
	final type:EnvironmentVariableMutatorType;

	/**
	 * The value to use for the variable.
	 */
	final value:String;
}
