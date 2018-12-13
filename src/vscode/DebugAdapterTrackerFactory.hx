package vscode;

typedef DebugAdapterTrackerFactory = {
	/**
	 * The method 'createDebugAdapterTracker' is called at the start of a debug session in order
	 * to return a "tracker" object that provides read-access to the communication between VS Code and a debug adapter.
	 *
	 * @param session The [debug session](#DebugSession) for which the debug adapter tracker will be used.
	 * @return A [debug adapter tracker](#DebugAdapterTracker) or undefined.
	 */
	function createDebugAdapterTracker(session:DebugSession):ProviderResult<DebugAdapterTracker>;
}
