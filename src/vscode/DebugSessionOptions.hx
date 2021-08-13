package vscode;

/**
 * Options for {@link debug.startDebugging starting a debug session}.
 */
typedef DebugSessionOptions = {
	/**
	 * When specified the newly created debug session is registered as a "child" session of this
	 * "parent" debug session.
	 */
	var ?parentSession:DebugSession;

	/**
	 * Controls whether lifecycle requests like 'restart' are sent to the newly created session or its parent session.
	 * By default (if the property is false or missing), lifecycle requests are sent to the new session.
	 * This property is ignored if the session has no parent session.
	 */
	var ?lifecycleManagedByParent:Bool;

	/**
	 * Controls whether this session should have a separate debug console or share it
	 * with the parent session. Has no effect for sessions which do not have a parent session.
	 * Defaults to Separate.
	 */
	var ?consoleMode:DebugConsoleMode;

	/**
	 * Controls whether this session should run without debugging, thus ignoring breakpoints.
	 * When this property is not specified, the value from the parent session (if there is one) is used.
	 */
	var ?noDebug:Bool;

	/**
	 * Controls if the debug session's parent session is shown in the CALL STACK view even if it has only a single child.
	 * By default, the debug session will never hide its parent.
	 * If compact is true, debug sessions with a single child are hidden in the CALL STACK view to make the tree more compact.
	 */
	var ?compact:Bool;
}
