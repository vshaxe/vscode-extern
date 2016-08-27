package vscode;

/**
 * Represents different positions for rendering a decoration in an [overview ruler](#DecorationRenderOptions.overviewRulerLane).
 * The overview ruler supports three lanes.
 */
@:enum abstract OverviewRulerLane(Int) {
	var Left = 1;
	var Center = 2;
	var Right = 4;
	var Full = 7;
}
