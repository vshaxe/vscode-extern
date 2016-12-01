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
	 * @param defaultValue A value should be returned when no value could be found, is `undefined`.
	 * @return The value `section` denotes or the default.
	 */
	function get<T>(section:String, ?defaultValue:T):T;

	/**
	 * Check if this configuration has a certain value.
	 *
	 * @param section Configuration name, supports _dotted_ names.
	 * @return `true` iff the section doesn't resolve to `undefined`.
	 */
	function has(section:String):Bool;

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
