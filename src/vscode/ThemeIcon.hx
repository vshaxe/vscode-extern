package vscode;

/**
 * A reference to a named icon. Currently, [File](#ThemeIcon.File), [Folder](#ThemeIcon.Folder),
 * and [codicons](https://microsoft.github.io/vscode-codicons/dist/codicon.html) are supported.
 * Using a theme icon is preferred over a custom icon as it gives theme authors the possibility to change the icons.
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
	 * The id of the icon. The available icons are listed in https://microsoft.github.io/vscode-codicons/dist/codicon.html.
	 */
	var id(default, null):String;

	/**
	 * The optional ThemeColor of the icon. The color is currently only used in [TreeItem](#TreeItem).
	 */
	var color(default, null):Null<ThemeColor>;

	/**
	 * Creates a reference to a theme icon.
	 * @param id id of the icon. The available icons are listed in https://microsoft.github.io/vscode-codicons/dist/codicon.html.
	 * @param color optional `ThemeColor` for the icon. The color is currently only used in [TreeItem](#TreeItem).
	 */
	function new(id:String, ?color:ThemeColor);
}
