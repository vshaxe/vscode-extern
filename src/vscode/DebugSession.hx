package vscode;

/**
 * A debug session.
 */
typedef DebugSession = {
	/**
	 * The unique ID of this debug session.
	 */
	var id(default, null):String;

	/**
	 * The debug session's type from the {@link DebugConfiguration debug configuration}.
	 */
	var type(default, null):String;

	/**
	 * The parent session of this debug session, if it was created as a child.
	 * @see DebugSessionOptions.parentSession
	 */
	var parentSession(default, null):Null<DebugSession>;

	/**
	 * The debug session's name is initially taken from the {@link DebugConfiguration debug configuration}.
	 * Any changes will be properly reflected in the UI.
	 */
	var name:String;

	/**
	 * The workspace folder of this session or `undefined` for a folderless setup.
	 */
	var ?workspaceFolder(default, null):WorkspaceFolder;

	/**
	 * The "resolved" {@link DebugConfiguration debug configuration} of this session.
	 * "Resolved" means that
	 * - all variables have been substituted and
	 * - platform specific attribute sections have been "flattened" for the matching platform and removed for non-matching platforms.
	 */
	var configuration(default, null):DebugConfiguration;

	/**
	 * Send a custom request to the debug adapter.
	 */
	function customRequest(command:String, ?args:Any):Thenable<Any>;

	/**
	 * Maps a breakpoint in the editor to the corresponding Debug Adapter Protocol (DAP) breakpoint that is managed by the debug adapter of the debug session.
	 * If no DAP breakpoint exists (either because the editor breakpoint was not yet registered or because the debug adapter is not interested in the breakpoint), the value `undefined` is returned.
	 *
	 * @param breakpoint A {@link Breakpoint} in the editor.
	 * @return A promise that resolves to the Debug Adapter Protocol breakpoint or `undefined`.
	 */
	function getDebugProtocolBreakpoint(breakpoint:Breakpoint):Thenable<Null<DebugProtocolBreakpoint>>;
}
