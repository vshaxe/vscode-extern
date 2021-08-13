package vscode;

/**
 * A Debug Adapter Tracker is a means to track the communication between the editor and a Debug Adapter.
 */
typedef DebugAdapterTracker = {
	/**
	 * A session with the debug adapter is about to be started.
	 */
	@:optional function onWillStartSession():Void;

	/**
	 * The debug adapter is about to receive a Debug Adapter Protocol message from the editor.
	 */
	@:optional function onWillReceiveMessage(message:Any):Void;

	/**
	 * The debug adapter has sent a Debug Adapter Protocol message to the editor.
	 */
	@:optional function onDidSendMessage(message:Any):Void;

	/**
	 * The debug adapter session is about to be stopped.
	 */
	@:optional function onWillStopSession():Void;

	/**
	 * An error with the debug adapter has occurred.
	 */
	@:optional function onError(error:Error):Void;

	/**
	 * The debug adapter has exited with the given exit code or signal.
	 */
	@:optional function onExit(?code:Int, ?signal:String):Void;
}
