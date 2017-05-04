package vscode;

/**
 * Value-object describing where and how progress should show.
 */
typedef ProgressOptions = {
	/**
	 * The location at which progress should show.
	 */
	var location:ProgressLocation;

	/**
	 * A human-readable string which will be used to describe the
	 * operation.
	 */
	@:optional var title:String;
}
