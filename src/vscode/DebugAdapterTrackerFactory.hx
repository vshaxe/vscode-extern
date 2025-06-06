package vscode;

/**
 * A debug adaper factory that creates {@link DebugAdapterTracker debug adapter trackers}.
 */
typedef DebugAdapterTrackerFactory = {
	/**
	 * The method 'createDebugAdapterTracker' is called at the start of a debug session in order
	 * to return a "tracker" object that provides read-access to the communication between the editor and a debug adapter.
	 *
	 * @param session The {@link DebugSession debug session} for which the debug adapter tracker will be used.
	 * @returns A {@link DebugAdapterTracker debug adapter tracker} or undefined.
	 */
	function createDebugAdapterTracker(session:DebugSession):ProviderResult<DebugAdapterTracker>;
}
