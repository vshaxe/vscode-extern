package vscode;

/**
 * A class that contains information about a covered resource. A count can
 * be give for lines, branches, and declarations in a file.
 */
@:jsRequire("vscode", "TestCoverageCount")
extern class TestCoverageCount {
	/**
	 * Number of items covered in the file.
	 */
	var covered:Int;

	/**
	 * Total number of covered items in the file.
	 */
	var total:Int;

	/**
	 * @param covered Value for {@link TestCoverageCount.covered}
	 * @param total Value for {@link TestCoverageCount.total}
	 */
	function new(covered:Int, total:Int);
}
