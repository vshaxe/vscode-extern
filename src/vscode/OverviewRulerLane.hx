package vscode;

/**
 * Represents different positions for rendering a decoration in an {@link DecorationRenderOptions.overviewRulerLane overview ruler}.
 * The overview ruler supports three lanes.
 */
@:jsRequire("vscode", "OverviewRulerLane")
extern enum abstract OverviewRulerLane(Int) {
	var Left;
	var Center;
	var Right;
	var Full;
}
