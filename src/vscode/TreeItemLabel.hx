package vscode;

/**
 * Label describing the [Tree item](#TreeItem)
 */
typedef TreeItemLabel = {
	/**
	 * A human-readable string describing the [Tree item](#TreeItem).
	 */
	var label:String;

	/**
	 * Ranges in the label to highlight. A range is defined as a tuple of two number where the
	 * first is the inclusive start index and the second the exclusive end index
	 */
	var ?highlights:Array<Array<Int>>;
}
