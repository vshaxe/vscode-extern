package vscode;

/**
 * Label describing the {@link TreeItem Tree item}
 */
typedef TreeItemLabel = {
	/**
	 * A human-readable string describing the {@link TreeItem Tree item}.
	 */
	var label:String;

	/**
	 * Ranges in the label to highlight. A range is defined as a tuple of two number where the
	 * first is the inclusive start index and the second the exclusive end index
	 */
	var ?highlights:Array<Array<Int>>;
}
