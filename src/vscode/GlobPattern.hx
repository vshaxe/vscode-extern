package vscode;

/**
 * A file glob pattern to match file paths against. This can either be a glob pattern string
 * (like `**∕*.{ts,js}` or `*.{ts,js}`) or a [relative pattern](#RelativePattern).
 */
typedef GlobPattern = haxe.extern.EitherType<String,RelativePattern>;
