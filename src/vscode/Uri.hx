package vscode;

/**
 * A universal resource identifier representing either a file on disk
 * or another resource, like untitled resources.
 */
@:jsRequire("vscode", "Uri")
extern class Uri {
	/**
	 * Create an URI from a string, e.g. `http://www.msft.com/some/path`,
	 * `file:///usr/home`, or `scheme:with/path`.
	 *
	 * @see [Uri.toString](#Uri.toString)
	 * @param value The string value of an Uri.
	 * @return A new Uri instance.
	 */
	static function parse(value:String):Uri;

	/**
	 * Create an URI from a file system path. The [scheme](#Uri.scheme)
	 * will be `file`.
	 *
	 * The *difference* between `Uri#parse` and `Uri#file` is that the latter treats the argument
	 * as path, not as stringified-uri. E.g. `Uri.file(path)` is *not* the same as
	 * `Uri.parse('file://' + path)` because the path might contain characters that are
	 * interpreted (# and ?). See the following sample:
	 * ```ts
	 * const good = URI.file('/coding/c#/project1');
	 * good.scheme === 'file';
	 * good.path === '/coding/c#/project1';
	 * good.fragment === '';
	 * const bad = URI.parse('file://' + '/coding/c#/project1');
	 * bad.scheme === 'file';
	 * bad.path === '/coding/c'; // path is now broken
	 * bad.fragment === '/project1';
	 * ```
	 *
	 * @param path A file system or UNC path.
	 * @return A new Uri instance.
	 */
	static function file(path:String):Uri;

	/**
	 * Use the `file` and `parse` factory functions to create new `Uri` objects.
	 */
	private function new(scheme:String, authority:String, path:String, query:String, fragment:String);

	/**
	 * Scheme is the `http` part of `http://www.msft.com/some/path?query#fragment`.
	 * The part before the first colon.
	 */
	var scheme(default, null):String;

	/**
	 * Authority is the `www.msft.com` part of `http://www.msft.com/some/path?query#fragment`.
	 * The part between the first double slashes and the next slash.
	 */
	var authority(default, null):String;

	/**
	 * Path is the `/some/path` part of `http://www.msft.com/some/path?query#fragment`.
	 */
	var path(default, null):String;

	/**
	 * Query is the `query` part of `http://www.msft.com/some/path?query#fragment`.
	 */
	var query(default, null):String;

	/**
	 * Fragment is the `fragment` part of `http://www.msft.com/some/path?query#fragment`.
	 */
	var fragment(default, null):String;

	/**
	 * The string representing the corresponding file system path of this Uri.
	 *
	 * Will handle UNC paths and normalize windows drive letters to lower-case. Also
	 * uses the platform specific path separator.
	 *
	 * * Will *not* validate the path for invalid characters and semantics.
	 * * Will *not* look at the scheme of this Uri.
	 * * The resulting string shall *not* be used for display purposes but
	 * for disk operations, like `readFile` et al.
	 *
	 * The *difference* to the [`path`](#Uri.path)-property is the use of the platform specific
	 * path separator and the handling of UNC paths. The sample below outlines the difference:
	 * ```ts
	 * const u = URI.parse('file://server/c$/folder/file.txt')
	 * u.authority === 'server'
	 * u.path === '/shares/c$/file.txt'
	 * u.fsPath === '\\server\c$\folder\file.txt'
	 * ```
	 */
	var fsPath(default, null):String;

	/**
	 * Derive a new Uri from this Uri.
	 *
	 * ```haxe
	 * var file = Uri.parse('before:some/file/path');
	 * var other = file.with({scheme: 'after'});
	 * Assert.ok(other.toString() == 'after:some/file/path');
	 * ```
	 *
	 * @param change An object that describes a change to this Uri. To unset components use `null` or
	 *  the empty string.
	 * @return A new Uri that reflects the given change. Will return `this` Uri if the change
	 *  is not changing anything.
	 */
	function with(change:{
		?scheme:String,
		?authority:String,
		?path:String,
		?query:String,
		?fragment:String
	}):Uri;

	/**
	 * Returns a string representation of this Uri. The representation and normalization
	 * of a URI depends on the scheme.
	 *
	 * * The resulting string can be safely used with [Uri.parse](#Uri.parse).
	 * * The resulting string shall *not* be used for display purposes.
	 *
	 * @param skipEncoding Do not percentage-encode the result, defaults to `false`. Note that
	 *	the `#` and `?` characters occurring in the path will always be encoded.
	 * @returns A string representation of this Uri.
	 */
	function toString(?skipEncoding:Bool):String;

	/**
	 * Returns a JSON representation of this Uri.
	 *
	 * @return An object.
	 */
	function toJSON():Any;
}
