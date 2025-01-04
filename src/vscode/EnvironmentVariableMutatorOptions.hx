package vscode;

/**
 * Options applied to the mutator.
 */
typedef EnvironmentVariableMutatorOptions = {
	/**
	 * Apply to the environment just before the process is created. Defaults to false.
	 */
	var ?applyAtProcessCreation:Bool;

	/**
	 * Apply to the environment in the shell integration script. Note that this _will not_ apply
	 * the mutator if shell integration is disabled or not working for some reason. Defaults to
	 * false.
	 */
	var ?applyAtShellIntegration:Bool;
}
