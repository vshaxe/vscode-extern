package vscode;

/**
 * A diagnostics collection is a container that manages a set of
 * [diagnostics](#Diagnostic). Diagnostics are always scopes to a
 * diagnostics collection and a resource.
 *
 * To get an instance of a `DiagnosticCollection` use
 * [createDiagnosticCollection](#languages.createDiagnosticCollection).
 */
typedef DiagnosticCollection = {
    /**
     * The name of this diagnostic collection, for instance `typescript`. Every diagnostic
     * from this collection will be associated with this name. Also, the task framework uses this
     * name when defining [problem matchers](https://code.visualstudio.com/docs/editor/tasks#_defining-a-problem-matcher).
     * @readonly
     */
    var name(default,null):String;

    /**
     * Assign diagnostics for given resource. Will replace
     * existing diagnostics for that resource.
     *
     * @param uri A resource identifier.
     * @param diagnostics Array of diagnostics or `undefined`
     */
    // TODO overload plox
    // /**
    //  * Replace all entries in this collection.
    //  *
    //  * Diagnostics of multiple tuples of the same uri will be merged, e.g
    //  * `[[file1, [d1]], [file1, [d2]]]` is equivalent to `[[file1, [d1, d2]]]`.
    //  * If a diagnostics item is `undefined` as in `[file1, undefined]`
    //  * all previous but not subsequent diagnostics are removed.
    //  *
    //  * @param entries An array of tuples, like `[[file1, [d1, d2]], [file2, [d3, d4, d5]]]`, or `undefined`.
    //  */
    @:overload(function(entries:Array<Array<Any>>):Void {})
    function set(uri:Uri, diagnostics:Null<Array<Diagnostic>>):Void;

    /**
     * Remove all diagnostics from this collection that belong
     * to the provided `uri`. The same as `#set(uri, undefined)`.
     *
     * @param uri A resource identifier.
     */
    function delete(uri:Uri):Void;

    /**
     * Remove all diagnostics from this collection. The same
     * as calling `#set(undefined)`;
     */
    function clear():Void;

    /**
     * Iterate over each entry in this collection.
     *
     * @param callback Function to execute for each entry.
     * @param thisArg The `this` context used when invoking the handler function.
     */
    function forEach(callback:Uri->Array<Diagnostic>->DiagnosticCollection->Void, ?thisArg:Any):Void;

    /**
     * Get the diagnostics for a given resource. *Note* that you cannot
     * modify the diagnostics-array returned from this call.
     *
     * @param uri A resource identifier.
     * @returns An immutable array of [diagnostics](#Diagnostic) or `undefined`.
     */
    function get(uri:Uri):Null<Array<Diagnostic>>;

    /**
     * Check if this collection contains diagnostics for a
     * given resource.
     *
     * @param uri A resource identifier.
     * @returns `true` if this collection has diagnostic for the given resource.
     */
    function has(uri:Uri):Bool;

    /**
     * Dispose and free associated resources. Calls
     * [clear](#DiagnosticCollection.clear).
     */
    function dispose():Void;
}
