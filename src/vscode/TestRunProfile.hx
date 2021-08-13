package vscode;

/**
 * A TestRunProfile describes one way to execute tests in a {@link TestController}.
 */
typedef TestRunProfile = {
	/**
	 * Label shown to the user in the UI.
	 *
	 * Note that the label has some significance if the user requests that
	 * tests be re-run in a certain way. For example, if tests were run
	 * normally and the user requests to re-run them in debug mode, the editor
	 * will attempt use a configuration with the same label of the `Debug`
	 * kind. If there is no such configuration, the default will be used.
	 */
	var label:String;

	/**
	 * Configures what kind of execution this profile controls. If there
	 * are no profiles for a kind, it will not be available in the UI.
	 */
	var kind(default, null):TestRunProfileKind;

	/**
	 * Controls whether this profile is the default action that will
	 * be taken when its kind is actioned. For example, if the user clicks
	 * the generic "run all" button, then the default profile for
	 * {@link TestRunProfileKind.Run} will be executed, although the
	 * user can configure this.
	 */
	var isDefault:Bool;

	/**
	 * If this method is present, a configuration gear will be present in the
	 * UI, and this method will be invoked when it's clicked. When called,
	 * you can take other editor actions, such as showing a quick pick or
	 * opening a configuration file.
	 */
	var ?configureHandler:() -> Void;

	/**
	 * Handler called to start a test run. When invoked, the function should call
	 * {@link TestController.createTestRun} at least once, and all test runs
	 * associated with the request should be created before the function returns
	 * or the returned promise is resolved.
	 *
	 * @param request Request information for the test run.
	 * @param cancellationToken Token that signals the used asked to abort the
	 * test run. If cancellation is requested on this token, all {@link TestRun}
	 * instances associated with the request will be
	 * automatically cancelled as well.
	 */
	var runHandler:(request:TestRunRequest, token:CancellationToken) -> Thenable<Void>;

	/**
	 * Deletes the run profile.
	 */
	function dispose():Void;
}
