import vscode.*;
import vscode.proposed.*;

@:jsRequire("vscode")
extern class VscodeProposed {
    /**
     * Namespace for dealing with the current workspace. A workspace is the representation
     * of the folder that has been opened. There is no workspace when just a file but not a
     * folder has been opened.
     *
     * The workspace offers support for [listening](#workspace.createFileSystemWatcher) to fs
     * events and for [finding](#workspace.findFiles) files. Both perform well and run _outside_
     * the editor-process so that they should be always used instead of nodejs-equivalents.
     */
    static var workspace(default,null):VscodeWorkspaceProposed;
}

extern class VscodeWorkspaceProposed {
    /**
     * Register a task provider.
     *
     * @param provider A task provider.
     * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
     */
    function registerTaskProvider(provider:TaskProvider):Disposable;
}