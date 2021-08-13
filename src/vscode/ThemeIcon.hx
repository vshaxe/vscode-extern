package vscode;

/**
 * A reference to a named icon. Currently, {@link ThemeIcon.File File}, {@link ThemeIcon.Folder Folder},
 * and [ThemeIcon ids](https://code.visualstudio.com/api/references/icons-in-labels#icon-listing) are supported.
 * Using a theme icon is preferred over a custom icon as it gives product theme authors the possibility to change the icons.
 *
 * *Note* that theme icons can also be rendered inside labels and descriptions. Places that support theme icons spell this out
 * and they use the `$(<name>)`-syntax, for instance `quickPick.label = "Hello World $(globe)"`.
 */
@:jsRequire("vscode", "ThemeIcon")
extern class ThemeIcon {
	/**
	 * Reference to an icon representing a file. The icon is taken from the current file icon theme or a placeholder icon.
	 */
	static var File(default, never):ThemeIcon;

	/**
	 * Reference to an icon representing a folder. The icon is taken from the current file icon theme or a placeholder icon.
	 */
	static var Folder(default, never):ThemeIcon;

	/**
	 * The id of the icon. The available icons are listed in https://code.visualstudio.com/api/references/icons-in-labels#icon-listing.
	 */
	var id(default, null):String;

	/**
	 * The optional ThemeColor of the icon. The color is currently only used in {@link TreeItem}.
	 */
	var color(default, null):Null<ThemeColor>;

	/**
	 * Creates a reference to a theme icon.
	 * @param id id id of the icon. The available icons are listed in https://code.visualstudio.com/api/references/icons-in-labels#icon-listing.
	 * @param color optional `ThemeColor` for the icon. The color is currently only used in {@link TreeItem}.
	 */
	function new(id:String, ?color:ThemeColor);
}
