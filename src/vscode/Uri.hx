package vscode;

/**
 * A universal resource identifier representing either a file on disk
 * or another resource, like untitled resources.
 */
@:jsRequire("vscode", "Uri")
extern class Uri {
    /**
     * Create an URI from a file system path. The [scheme](#Uri.scheme)
     * will be `file`.
     *
     * @param path A file system or UNC path.
     * @return A new Uri instance.
     */
    static function file(path:String):Uri;

    /**
     * Create an URI from a string. Will throw if the given value is not
     * valid.
     *
     * @param value The string value of an Uri.
     * @return A new Uri instance.
     */
    static function parse(value:String):Uri;

    /**
     * Scheme is the `http` part of `http://www.msft.com/some/path?query#fragment`.
     * The part before the first colon.
     */
    var scheme:String;

    /**
     * Authority is the `www.msft.com` part of `http://www.msft.com/some/path?query#fragment`.
     * The part between the first double slashes and the next slash.
     */
    var authority:String;

    /**
     * Path is the `/some/path` part of `http://www.msft.com/some/path?query#fragment`.
     */
    var path:String;

    /**
     * Query is the `query` part of `http://www.msft.com/some/path?query#fragment`.
     */
    var query:String;

    /**
     * Fragment is the `fragment` part of `http://www.msft.com/some/path?query#fragment`.
     */
    var fragment:String;

    /**
     * The string representing the corresponding file system path of this Uri.
     *
     * Will handle UNC paths and normalize windows drive letters to lower-case. Also
     * uses the platform specific path separator. Will *not* validate the path for
     * invalid characters and semantics. Will *not* look at the scheme of this Uri.
     */
    var fsPath:String;

    /**
     * Derive a new Uri from this Uri.
     *
     * @param change An object that describes a change to this Uri. To unset components use `null` or
     *  the empty string.
     * @return A new Uri that reflects the given change. Will return `this` Uri if the change
     *  is not changing anything.
     * @sample ```
        let file = Uri.parse('before:some/file/path');
        let other = file.with({ scheme: 'after' });
        assert.ok(other.toString() === 'after:some/file/path');
        * ```
        */
    function with(change:{?scheme:String, ?authority:String, ?path:String, ?query:String, ?fragment:String}):Uri;

    /**
     * Returns a string representation of this Uri. The representation and normalization
     * of a URI depends on the scheme. The resulting string can be safely used with
     * [Uri.parse](#Uri.parse).
     *
     * @param skipEncoding Do not percentage-encode the result, defaults to `false`. Note that
     *  the `#` and `?` characters occuring in the path will always be encoded.
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
