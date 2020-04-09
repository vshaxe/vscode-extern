package vscode;

/**
 * Value-object describing where and how progress should show.
 */
typedef ProgressOptions = {
	/**
	 * The location at which progress should show.
	 */
	var location:EitherType<ProgressLocation, {viewId:String}>;

	/**
	 * A human-readable string which will be used to describe the
	 * operation.
	 */
	var ?title:String;

	/**
	 * Controls if a cancel button should show to allow the user to
	 * cancel the long running operation.  Note that currently only
	 * `ProgressLocation.Notification` is supporting to show a cancel
	 * button.
	 */
	var ?cancellable:Bool;
}
