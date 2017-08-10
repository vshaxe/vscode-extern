package vscode;

/**
 * A workspace folder is one of potentially many roots opened by the editor. All workspace folders
 * are equal which means there is notion of an active or master workspace folder.
 */
typedef WorkspaceFolder = {
    /**
     * The associated URI for this workspace folder.
     */
    var uri(default,null):Uri;

    /**
     * The name of this workspace folder. Defaults to
     * the basename its [uri-path](#Uri.path)
     */
    var name(default,null):String;

    /**
     * The ordinal number of this workspace folder.
     */
    var index(default,null):Int;
}
