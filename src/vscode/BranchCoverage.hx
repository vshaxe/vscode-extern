package vscode;

/**
 * Contains coverage information for a branch of a {@link StatementCoverage}.
 */
@:jsRequire("vscode", "BranchCoverage")
extern class BranchCoverage {
	/**
	 * The number of times this branch was executed, or a boolean indicating
	 * whether it was executed if the exact count is unknown. If zero or false,
	 * the branch will be marked as un-covered.
	 */
	var executed:EitherType<Int, Bool>;

	/**
	 * Branch location.
	 */
	var location:Null<EitherType<Position, Range>>;

	/**
	 * Label for the branch, used in the context of "the ${label} branch was
	 * not taken," for example.
	 */
	var label:Null<String>;

	/**
	 * @param executed The number of times this branch was executed, or a
	 * boolean indicating  whether it was executed if the exact count is
	 * unknown. If zero or false, the branch will be marked as un-covered.
	 * @param location The branch position.
	 */
	function new(executed:EitherType<Int, Bool>, ?location:EitherType<Position, Range>, ?label:String);
}
