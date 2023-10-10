package vscode;

/**
 * Represents different positions for rendering a decoration in an {@link DecorationRenderOptions.overviewRulerLane overview ruler}.
 * The overview ruler supports three lanes.
 */
@:jsRequire("vscode", "OverviewRulerLane")
extern enum abstract OverviewRulerLane(Int) {
	/**
	 * The left lane of the overview ruler.
	 */
	var Left;

	/**
	 * The center lane of the overview ruler.
	 */
	var Center;

	/**
	 * The right lane of the overview ruler.
	 */
	var Right;

	/**
	 * All lanes of the overview ruler.
	 */
	var Full;
}
