package vscode;

/**
 * Contains coverage information for a single statement or line.
 */
@:jsRequire("vscode", "StatementCoverage")
extern class StatementCoverage {
	/**
	 * The number of times this statement was executed, or a boolean indicating
	 * whether it was executed if the exact count is unknown. If zero or false,
	 * the statement will be marked as un-covered.
	 */
	var executed:EitherType<Int, Bool>;

	/**
	 * Statement location.
	 */
	var location:EitherType<Position, Range>;

	/**
	 * Coverage from branches of this line or statement. If it's not a
	 * conditional, this will be empty.
	 */
	var branches:Array<BranchCoverage>;

	/**
	 * @param location The statement position.
	 * @param executed The number of times this statement was executed, or a
	 * boolean indicating  whether it was executed if the exact count is
	 * unknown. If zero or false, the statement will be marked as un-covered.
	 * @param branches Coverage from branches of this line.  If it's not a
	 * conditional, this should be omitted.
	 */
	function new(executed:EitherType<Int, Bool>, location:EitherType<Position, Range>, ?branches:Array<BranchCoverage>);
}
