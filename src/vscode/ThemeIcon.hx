package vscode;

/**
 * A reference to a named icon. Currently only [File](#ThemeIcon.File) and [Folder](#ThemeIcon.Folder) are supported.
 * Using a theme icon is preferred over a custom icon as it gives theme authors the possibility to change the icons.
 */
@:jsRequire("vscode", "ThemeIcon")
extern class ThemeIcon {
	/**
	 * Reference to a icon representing a file. The icon is taken from the current file icon theme or a placeholder icon.
	 */
	static var File(default, never):ThemeIcon;

	/**
	 * Reference to a icon representing a folder. The icon is taken from the current file icon theme or a placeholder icon.
	 */
	static var Folder(default, never):ThemeIcon;
	private function new(id:String);
}
