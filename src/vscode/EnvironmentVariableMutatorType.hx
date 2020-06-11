package vscode;

/**
 * A type of mutation that can be applied to an environment variable.
 */
@:jsRequire("vscode", "EnvironmentVariableMutatorType")
extern enum abstract EnvironmentVariableMutatorType(Int) {
	/**
	 * Replace the variable's existing value.
	 */
	var Replace;

	/**
	 * Append to the end of the variable's existing value.
	 */
	var Append;

	/**
	 * Prepend to the start of the variable's existing value.
	 */
	var Prepend;
}
