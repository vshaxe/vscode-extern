package vscode;

import haxe.extern.EitherType;

/**
 * A snippet string is a template which allows to insert text
 * and to control the editor cursor when insertion happens.
 *
 * A snippet can define tab stops and placeholders with `$1`, `$2`
 * and `${3:foo}`. `$0` defines the final tab stop, it defaults to
 * the end of the snippet. Variables are defined with `$name` and
 * `${name:default value}`. The full snippet syntax is documented
 * [here](http://code.visualstudio.com/docs/customization/userdefinedsnippets#_creating-your-own-snippets).
 */
@:jsRequire("vscode", "SnippetString")
extern class SnippetString {

    /**
     * The snippet string.
     */
    var value:String;

    function new(?value:String);

    /**
     * Builder-function that appends the given string to
     * the [`value`](#SnippetString.value) of this snippet string.
     *
     * @param string A value to append 'as given'. The string will be escaped.
     * @return This snippet string.
     */
    function appendText(string:String):SnippetString;

    /**
     * Builder-function that appends a tabstop (`$1`, `$2` etc) to
     * the [`value`](#SnippetString.value) of this snippet string.
     *
     * @param number The number of this tabstop, defaults to an auto-incremet
     * value starting at 1.
     * @return This snippet string.
     */
    function appendTabstop(?number:Int):SnippetString;

    /**
     * Builder-function that appends a placeholder (`${1:value}`) to
     * the [`value`](#SnippetString.value) of this snippet string.
     *
     * @param value The value of this placeholder - either a string or a function
     * with which a nested snippet can be created.
     * @param number The number of this tabstop, defaults to an auto-incremet
     * value starting at 1.
     * @return This snippet string.
     */
    function appendPlaceholder(value:EitherType<String, SnippetString->Any>, ?number:Int):SnippetString;

    /**
     * Builder-function that appends a variable (`${VAR}`) to
     * the [`value`](#SnippetString.value) of this snippet string.
     *
     * @param name The name of the variable - excluding the `$`.
     * @param defaultValue The default value which is used when the variable name cannot
     * be resolved - either a string or a function with which a nested snippet can be created.
     * @return This snippet string.
     */
    function appendVariable(name:String, defaultValue:EitherType<String, SnippetString->Any>):SnippetString;
}
