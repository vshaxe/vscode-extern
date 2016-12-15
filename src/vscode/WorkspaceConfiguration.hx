package vscode;

import js.Promise.Thenable;

/**
 * Represents the workspace configuration.
 *
 * The workspace configuration is a merged view: Configurations of the current [workspace](#workspace.rootPath)
 * (if available), files like `launch.json`, and the installation-wide configuration. Workspace specific values
 * shadow installation-wide values.
 *
 * *Note:* The merged configuration of the current [workspace](#workspace.rootPath)
 * also contains settings from files like `launch.json` and `tasks.json`. Their basename will be
 * part of the section identifier. The following snippets shows how to retrieve all configurations
 * from `launch.json`:
 *
 * ```
 * // launch.json configuration
 * const config = workspace.getConfiguration('launch');
 *
 * // retrieve values
 * const values = config.get('configurations');
 * ```
 */
typedef WorkspaceConfiguration = {

    /**
     * Return a value from this configuration.
     *
     * @param section Configuration name, supports _dotted_ names.
     * @return The value `section` denotes or `undefined`.
     */
    @:overload(function<T>(section:String, defaultValue:T):T {})
    function get<T>(section:String):Null<T>;

    /**
     * Check if this configuration has a certain value.
     *
     * @param section Configuration name, supports _dotted_ names.
     * @return `true` iff the section doesn't resolve to `undefined`.
     */
    function has(section:String):Bool;

    /**
     * Retrieve all information about a configuration setting. A configuration value
     * often consists of a *default* value, a global or installation-wide value, and
     * a workspace-specific value. The *effective* value (returned by [`get`](#WorkspaceConfiguration.get))
     * is computed like this: `defaultValue` overwritten by `globalValue`,
     * `globalValue` overwritten by `workspaceValue`.
     *
     * *Note:* The configuration name must denote a leaf in the configuration tree
     * (`editor.fontSize` vs `editor`) otherwise no result is returned.
     *
     * @param section Configuration name, supports _dotted_ names.
     * @return Information about a configuration setting or `undefined`.
     */
    function inspect<T>(section:String):Null<{key:String, ?defaultValue:T, ?globalValue:T, ?workspaceValue:T}>;

    /**
     * Update a configuration value. A value can be changed for the current
     * [workspace](#workspace.rootPath) only, or globally for all instances of the
     * editor. The updated configuration values are persisted.
     *
     * *Note 1:* Setting an installation-wide value (`global: true`) in the presence of
     * a more specific workspace value has no observable effect in that workspace, but
     * in others.
     *
     * *Note 2:* To remove a configuration value use `undefined`, like so: `config.update('somekey', undefined)`
     *
     * @param section Configuration name, supports _dotted_ names.
     * @param value The new value.
     * @param global When `true` changes the configuration value for all instances of the editor.
     */
    function update(section:String, value:Any, ?global:Bool):Thenable<Void>;
}
