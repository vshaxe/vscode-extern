import vscode.*;

@:jsRequire("vscode")
extern class Vscode {
	/**
	 * The version of the editor.
	 */
	static var version(default, null):String;

	/**
	 * Namespace describing the environment the editor runs in.
	 */
	static var env(default, null):VscodeEnv;

	/**
	 * Namespace for dealing with commands. In short, a command is a function with a
	 * unique identifier. The function is sometimes also called _command handler_.
	 *
	 * Commands can be added to the editor using the {@link commands.registerCommand registerCommand}
	 * and {@link commands.registerTextEditorCommand registerTextEditorCommand} functions. Commands
	 * can be executed {@link commands.executeCommand manually} or from a UI gesture. Those are:
	 *
	 * * palette - Use the `commands`-section in `package.json` to make a command show in
	 * the [command palette](https://code.visualstudio.com/docs/getstarted/userinterface#_command-palette).
	 * * keybinding - Use the `keybindings`-section in `package.json` to enable
	 * [keybindings](https://code.visualstudio.com/docs/getstarted/keybindings#_customizing-shortcuts)
	 * for your extension.
	 *
	 * Commands from other extensions and from the editor itself are accessible to an extension. However,
	 * when invoking an editor command not all argument types are supported.
	 *
	 * This is a sample that registers a command handler and adds an entry for that command to the palette. First
	 * register a command handler with the identifier `extension.sayHello`.
	 * ```javascript
	 * commands.registerCommand('extension.sayHello', () => {
	 * 	window.showInformationMessage('Hello World!');
	 * });
	 * ```
	 * Second, bind the command identifier to a title under which it will show in the palette (`package.json`).
	 * ```json
	 * {
	 * 	"contributes": {
	 * 		"commands": [{
	 * 			"command": "extension.sayHello",
	 * 			"title": "Hello World"
	 * 		}]
	 * 	}
	 * }
	 * ```
	 */
	static var commands(default, null):VscodeCommands;

	/**
	 * Namespace for dealing with the current window of the editor. That is visible
	 * and active editors, as well as, UI elements to show messages, selections, and
	 * asking for user input.
	 */
	static var window(default, null):VscodeWindow;

	/**
	 * Namespace for dealing with the current workspace. A workspace is the collection of one
	 * or more folders that are opened in an editor window (instance).
	 *
	 * It is also possible to open an editor without a workspace. For example, when you open a
	 * new editor window by selecting a file from your platform's File menu, you will not be
	 * inside a workspace. In this mode, some of the editor's capabilities are reduced but you can
	 * still open text files and edit them.
	 *
	 * Refer to https://code.visualstudio.com/docs/editor/workspaces for more information on
	 * the concept of workspaces.
	 *
	 * The workspace offers support for {@link workspace.createFileSystemWatcher listening} to fs
	 * events and for {@link workspace.findFiles finding} files. Both perform well and run _outside_
	 * the editor-process so that they should be always used instead of nodejs-equivalents.
	 */
	static var workspace(default, null):VscodeWorkspace;

	/**
	 * Namespace for participating in language-specific editor [features](https://code.visualstudio.com/docs/editor/editingevolved),
	 * like IntelliSense, code actions, diagnostics etc.
	 *
	 * Many programming languages exist and there is huge variety in syntaxes, semantics, and paradigms. Despite that, features
	 * like automatic word-completion, code navigation, or code checking have become popular across different tools for different
	 * programming languages.
	 *
	 * The editor provides an API that makes it simple to provide such common features by having all UI and actions already in place and
	 * by allowing you to participate by providing data only. For instance, to contribute a hover all you have to do is provide a function
	 * that can be called with a {@link TextDocument} and a {@link Position} returning hover info. The rest, like tracking the
	 * mouse, positioning the hover, keeping the hover stable etc. is taken care of by the editor.
	 *
	 * ```javascript
	 * languages.registerHoverProvider('javascript', {
	 * 	provideHover(document, position, token) {
	 * 		return new Hover('I am a hover!');
	 * 	}
	 * });
	 * ```
	 *
	 * Registration is done using a {@link DocumentSelector document selector} which is either a language id, like `javascript` or
	 * a more complex {@link DocumentFilter filter} like `{ language: 'typescript', scheme: 'file' }`. Matching a document against such
	 * a selector will result in a {@link languages.match score} that is used to determine if and how a provider shall be used. When
	 * scores are equal the provider that came last wins. For features that allow full arity, like {@link languages.registerHoverProvider hover},
	 * the score is only checked to be `>0`, for other features, like {@link languages.registerCompletionItemProvider IntelliSense} the
	 * score is used for determining the order in which providers are asked to participate.
	 */
	static var languages(default, null):VscodeLanguages;

	static var scm(default, null):VscodeScm;

	/**
	 * Namespace for debug functionality.
	 */
	static var debug(default, null):VscodeDebug;

	/**
	 * Namespace for dealing with installed extensions. Extensions are represented
	 * by an {@link Extension}-interface which enables reflection on them.
	 *
	 * Extension writers can provide APIs to other extensions by returning their API public
	 * surface from the `activate`-call.
	 *
	 * ```javascript
	 * export function activate(context: vscode.ExtensionContext) {
	 * 	let api = {
	 * 		sum(a, b) {
	 * 			return a + b;
	 * 		},
	 * 		mul(a, b) {
	 * 			return a * b;
	 * 		}
	 * 	};
	 * 	// 'export' public api-surface
	 * 	return api;
	 * }
	 * ```
	 * When depending on the API of another extension add an `extensionDependencies`-entry
	 * to `package.json`, and use the {@link extensions.getExtension getExtension}-function
	 * and the {@link Extension.exports exports}-property, like below:
	 *
	 * ```javascript
	 * let mathExt = extensions.getExtension('genius.math');
	 * let importedApi = mathExt.exports;
	 *
	 * console.log(importedApi.mul(42, 1));
	 * ```
	 */
	static var extensions(default, null):VscodeExtensions;

	/**
	 * Namespace for tasks functionality.
	 */
	static var tasks(default, null):VscodeTasks;

	static var comments(default, null):VscodeComments;

	/**
	 * Namespace for authentication.
	 */
	static var authentication(default, null):VscodeAuthentication;

	/**
	 * Namespace for notebooks.
	 *
	 * The notebooks functionality is composed of three loosely coupled components:
	 *
	 * 1. {@link NotebookSerializer} enable the editor to open, show, and save notebooks
	 * 2. {@link NotebookController} own the execution of notebooks, e.g they create output from code cells.
	 * 3. NotebookRenderer present notebook output in the editor. They run in a separate context.
	 */
	static var notebooks(default, null):VscodeNotebooks;

	/**
	 * Namespace for testing functionality. Tests are published by registering
	 * {@link TestController} instances, then adding {@link TestItem TestItems}.
	 * Controllers may also describe how to run tests by creating one or more
	 * {@link TestRunProfile} instances.
	 */
	static var tests(default, null):VscodeTests;
}

extern class VscodeEnv {
	/**
	 * The application name of the editor, like 'VS Code'.
	 */
	var appName(default, null):String;

	/**
	 * The application root folder from which the editor is running.
	 *
	 * *Note* that the value is the empty string when running in an
	 * environment that has no representation of an application root folder.
	 */
	var appRoot(default, null):String;

	/**
	 * The environment in which the app is hosted in. i.e. 'desktop', 'codespaces', 'web'.
	 */
	var appHost(default, null):String;

	/**
	 * The custom uri scheme the editor registers to in the operating system.
	 */
	var uriScheme(default, null):String;

	/**
	 * Represents the preferred user-language, like `de-CH`, `fr`, or `en-US`.
	 */
	var language(default, null):String;

	/**
	 * The system clipboard.
	 */
	var clipboard(default, null):Clipboard;

	/**
	 * A unique identifier for the computer.
	 */
	var machineId(default, null):String;

	/**
	 * A unique identifier for the current session.
	 * Changes each time the editor is started.
	 */
	var sessionId(default, null):String;

	/**
	 * Indicates that this is a fresh install of the application.
	 * `true` if within the first day of installation otherwise `false`.
	 */
	var isNewAppInstall(default, null):Bool;

	/**
	 * Indicates whether the users has telemetry enabled.
	 * Can be observed to determine if the extension should send telemetry.
	 */
	var isTelemetryEnabled(default, null):Bool;

	/**
	 * An {@link Event} which fires when the user enabled or disables telemetry.
	 * `true` if the user has enabled telemetry or `false` if the user has disabled telemetry.
	 */
	var onDidChangeTelemetryEnabled(default, null):Event<Bool>;

	/**
	 * The name of a remote. Defined by extensions, popular samples are `wsl` for the Windows
	 * Subsystem for Linux or `ssh-remote` for remotes using a secure shell.
	 *
	 * *Note* that the value is `undefined` when there is no remote extension host but that the
	 * value is defined in all extension hosts (local and remote) in case a remote extension host
	 * exists. Use {@link Extension.extensionKind} to know if
	 * a specific extension runs remote or not.
	 */
	var remoteName(default, null):Null<String>;

	/**
	 * The detected default shell for the extension host, this is overridden by the
	 * `terminal.integrated.shell` setting for the extension host's platform. Note that in
	 * environments that do not support a shell the value is the empty string.
	 */
	var shell(default, null):String;

	/**
	 * The UI kind property indicates from which UI extensions
	 * are accessed from. For example, extensions could be accessed
	 * from a desktop application or a web browser.
	 */
	var uiKind(default, null):UIKind;

	/**
	 * Opens a link externally using the default application. Depending on the
	 * used scheme this can be:
	 * * a browser (`http:`, `https:`)
	 * * a mail client (`mailto:`)
	 * * VSCode itself (`vscode:` from `vscode.env.uriScheme`)
	 *
	 * *Note* that {@linkcode window.showTextDocument showTextDocument} is the right
	 * way to open a text document inside the editor, not this function.
	 *
	 * @param target The uri that should be opened.
	 * @returns A promise indicating if open was successful.
	 */
	function openExternal(target:Uri):Thenable<Bool>;

	/**
	 * Resolves a uri to a form that is accessible externally.
	 *
	 * #### `http:` or `https:` scheme
	 *
	 * Resolves an *external* uri, such as a `http:` or `https:` link, from where the extension is running to a
	 * uri to the same resource on the client machine.
	 *
	 * This is a no-op if the extension is running on the client machine.
	 *
	 * If the extension is running remotely, this function automatically establishes a port forwarding tunnel
	 * from the local machine to `target` on the remote and returns a local uri to the tunnel. The lifetime of
	 * the port forwarding tunnel is managed by the editor and the tunnel can be closed by the user.
	 *
	 * *Note* that uris passed through `openExternal` are automatically resolved and you should not call `asExternalUri` on them.
	 *
	 * #### `vscode.env.uriScheme`
	 *
	 * Creates a uri that - if opened in a browser (e.g. via `openExternal`) - will result in a registered {@link UriHandler}
	 * to trigger.
	 *
	 * Extensions should not make any assumptions about the resulting uri and should not alter it in any way.
	 * Rather, extensions can e.g. use this uri in an authentication flow, by adding the uri as callback query
	 * argument to the server to authenticate to.
	 *
	 * *Note* that if the server decides to add additional query parameters to the uri (e.g. a token or secret), it
	 * will appear in the uri that is passed to the {@link UriHandler}.
	 *
	 * **Example** of an authentication flow:
	 * ```typescript
	 * vscode.window.registerUriHandler({
	 *   handleUri(uri: vscode.Uri): vscode.ProviderResult<void> {
	 *     if (uri.path === '/did-authenticate') {
	 *       console.log(uri.toString());
	 *     }
	 *   }
	 * });
	 *
	 * const callableUri = await vscode.env.asExternalUri(vscode.Uri.parse(`${vscode.env.uriScheme}://my.extension/did-authenticate`));
	 * await vscode.env.openExternal(callableUri);
	 * ```
	 *
	 * *Note* that extensions should not cache the result of `asExternalUri` as the resolved uri may become invalid due to
	 * a system or user action — for example, in remote cases, a user may close a port forwarding tunnel that was opened by
	 * `asExternalUri`.
	 *
	 * #### Any other scheme
	 *
	 * Any other scheme will be handled as if the provided URI is a workspace URI. In that case, the method will return
	 * a URI which, when handled, will make the editor open the workspace.
	 *
	 * @return A uri that can be used on the client machine.
	 */
	function asExternalUri(target:Uri):Thenable<Uri>;
}

extern class VscodeCommands {
	/**
	 * Registers a command that can be invoked via a keyboard shortcut,
	 * a menu item, an action, or directly.
	 *
	 * Registering a command with an existing command identifier twice
	 * will cause an error.
	 *
	 * @param command A unique identifier for the command.
	 * @param callback A command handler function.
	 * @param thisArg The `this` context used when invoking the handler function.
	 * @return Disposable which unregisters this command on disposal.
	 */
	function registerCommand(command:String, callback:Function, ?thisArg:Any):Disposable;

	/**
	 * Registers a text editor command that can be invoked via a keyboard shortcut,
	 * a menu item, an action, or directly.
	 *
	 * Text editor commands are different from ordinary {@link commands.registerCommand commands} as
	 * they only execute when there is an active editor when the command is called. Also, the
	 * command handler of an editor command has access to the active editor and to an
	 * {@link TextEditorEdit edit}-builder. Note that the edit-builder is only valid while the
	 * callback executes.
	 *
	 * @param command A unique identifier for the command.
	 * @param callback A command handler function with access to an {@link TextEditor editor} and an {@link TextEditorEdit edit}.
	 * @param thisArg The `this` context used when invoking the handler function.
	 * @return Disposable which unregisters this command on disposal.
	 */
	// TODO callback should receive Rest really
	function registerTextEditorCommand(command:String, callback:TextEditor->TextEditorEdit->Void, ?thisArg:Any):Disposable;

	/**
	 * Executes the command denoted by the given command identifier.
	 *
	 * * *Note 1:* When executing an editor command not all types are allowed to
	 * be passed as arguments. Allowed are the primitive types `string`, `boolean`,
	 * `number`, `undefined`, and `null`, as well as {@linkcode Position}, {@linkcode Range}, {@linkcode Uri} and {@linkcode Location}.
	 * * *Note 2:* There are no restrictions when executing commands that have been contributed
	 * by extensions.
	 *
	 * @param command Identifier of the command to execute.
	 * @param rest Parameters passed to the command function.
	 * @return A thenable that resolves to the returned value of the given command. `undefined` when
	 * the command handler function doesn't return anything.
	 */
	function executeCommand<T>(command:String, rest:Rest<Any>):Thenable<Null<T>>;

	/**
	 * Retrieve the list of all available commands. Commands starting with an underscore are
	 * treated as internal commands.
	 *
	 * @param filterInternal Set `true` to not see internal commands (starting with an underscore)
	 * @return Thenable that resolves to a list of command ids.
	 */
	function getCommands(?filterInternal:Bool):Thenable<Array<String>>;
}

extern class VscodeWindow {
	/**
	 * The currently active editor or `undefined`. The active editor is the one
	 * that currently has focus or, when none has focus, the one that has changed
	 * input most recently.
	 */
	var activeTextEditor:Null<TextEditor>;

	/**
	 * The currently visible editors or an empty array.
	 */
	var visibleTextEditors:Array<TextEditor>;

	/**
	 * An {@link Event} which fires when the {@link window.activeTextEditor active editor}
	 * has changed. *Note* that the event also fires when the active editor changes
	 * to `undefined`.
	 */
	var onDidChangeActiveTextEditor(default, null):Event<Null<TextEditor>>;

	/**
	 * An {@link Event} which fires when the array of {@link window.visibleTextEditors visible editors}
	 * has changed.
	 */
	var onDidChangeVisibleTextEditors(default, null):Event<Array<TextEditor>>;

	/**
	 * An {@link Event} which fires when the selection in an editor has changed.
	 */
	var onDidChangeTextEditorSelection(default, null):Event<TextEditorSelectionChangeEvent>;

	/**
	 * An {@link Event} which fires when the visible ranges of an editor has changed.
	 */
	var onDidChangeTextEditorVisibleRanges(default, null):Event<TextEditorVisibleRangesChangeEvent>;

	/**
	 * An {@link Event} which fires when the options of an editor have changed.
	 */
	var onDidChangeTextEditorOptions(default, null):Event<TextEditorOptionsChangeEvent>;

	/**
	 * An {@link Event} which fires when the view column of an editor has changed.
	 */
	var onDidChangeTextEditorViewColumn(default, null):Event<TextEditorViewColumnChangeEvent>;

	/**
	 * The currently opened terminals or an empty array.
	 */
	var terminals(default, null):ReadOnlyArray<Terminal>;

	/**
	 * The currently active terminal or `undefined`. The active terminal is the one that
	 * currently has focus or most recently had focus.
	 */
	var activeTerminal(default, null):Null<Terminal>;

	/**
	 * An {@link Event} which fires when the {@link window.activeTerminal active terminal}
	 * has changed. *Note* that the event also fires when the active terminal changes
	 * to `undefined`.
	 */
	var onDidChangeActiveTerminal(default, null):Null<Event<Terminal>>;

	/**
	 * An {@link Event} which fires when a terminal has been created, either through the
	 * {@link window.createTerminal createTerminal} API or commands.
	 */
	var onDidOpenTerminal(default, null):Event<Terminal>;

	/**
	 * An {@link Event} which fires when a terminal is disposed.
	 */
	var onDidCloseTerminal(default, null):Event<Terminal>;

	/**
	 * Represents the current window's state.
	 */
	var state(default, null):WindowState;

	/**
	 * An {@link Event} which fires when the focus state of the current window
	 * changes. The value of the event represents whether the window is focused.
	 */
	var onDidChangeWindowState(default, null):Event<WindowState>;

	/**
	 * Show the given document in a text editor. A {@link ViewColumn column} can be provided
	 * to control where the editor is being shown. Might change the {@link window.activeTextEditor active editor}.
	 *
	 * @param document A text document to be shown.
	 * @param column A view column in which the {@link TextEditor editor} should be shown. The default is the {@link ViewColumn.Active active}, other values
	 * are adjusted to be `Min(column, columnCount + 1)`, the {@link ViewColumn.Active active}-column is not adjusted. Use {@linkcode ViewColumn.Beside}
	 * to open the editor to the side of the currently active one.
	 * @param preserveFocus When `true` the editor will not take focus.
	 * @return A promise that resolves to an {@link TextEditor editor}.
	 */
	@:overload(function(uri:Uri, ?options:TextDocumentShowOptions):Thenable<TextEditor> {})
	@:overload(function(document:TextDocument, ?options:TextDocumentShowOptions):Thenable<TextEditor> {})
	function showTextDocument(document:TextDocument, ?column:ViewColumn, ?preserveFocus:Bool):Thenable<TextEditor>;

	/**
	 * Create a TextEditorDecorationType that can be used to add decorations to text editors.
	 *
	 * @param options Rendering options for the decoration type.
	 * @return A new decoration type instance.
	 */
	function createTextEditorDecorationType(options:DecorationRenderOptions):TextEditorDecorationType;

	/**
	 * Show an information message.
	 *
	 * @see {@link window.showInformationMessage showInformationMessage}
	 *
	 * @param message The message to show.
	 * @param items A set of items that will be rendered as actions in the message.
	 * @param options Configures the behaviour of the message.
	 * @return A thenable that resolves to the selected item or `undefined` when being dismissed.
	 */
	// TODO overload plox
	// /**
	//  * Show an information message to users. Optionally provide an array of items which will be presented as
	//  * clickable buttons.
	//  *
	//  * @param message The message to show.
	//  * @param items A set of items that will be rendered as actions in the message.
	//  * @return A thenable that resolves to the selected item or `undefined` when being dismissed.
	//  */
	// /**
	//  * Show an information message to users. Optionally provide an array of items which will be presented as
	//  * clickable buttons.
	//  *
	//  * @param message The message to show.
	//  * @param options Configures the behaviour of the message.
	//  * @param items A set of items that will be rendered as actions in the message.
	//  * @return A thenable that resolves to the selected item or `undefined` when being dismissed.
	//  */
	@:overload(function<T:MessageItem>(message:String, items:Rest<T>):Thenable<Null<T>> {})
	@:overload(function<T:MessageItem>(message:String, options:MessageOptions, items:Rest<T>):Thenable<Null<T>> {})
	@:overload(function(message:String, items:Rest<String>):Thenable<Null<String>> {})
	function showInformationMessage(message:String, options:MessageOptions, items:Rest<String>):Thenable<Null<String>>;

	/**
	 * Show a warning message.
	 *
	 * @see {@link window.showInformationMessage showInformationMessage}
	 *
	 * @param message The message to show.
	 * @param options Configures the behaviour of the message.
	 * @param items A set of items that will be rendered as actions in the message.
	 * @return A thenable that resolves to the selected item or `undefined` when being dismissed.
	 */
	@:overload(function<T:MessageItem>(message:String, items:Rest<T>):Thenable<Null<T>> {})
	@:overload(function<T:MessageItem>(message:String, options:MessageOptions, items:Rest<T>):Thenable<Null<T>> {})
	@:overload(function(message:String, items:Rest<String>):Thenable<Null<String>> {})
	function showWarningMessage(message:String, options:MessageOptions, items:Rest<String>):Thenable<Null<String>>;

	/**
	 * Show an error message.
	 *
	 * @see {@link window.showInformationMessage showInformationMessage}
	 *
	 * @param message The message to show.
	 * @param options Configures the behaviour of the message.
	 * @param items A set of items that will be rendered as actions in the message.
	 * @return A thenable that resolves to the selected item or `undefined` when being dismissed.
	 */
	@:overload(function<T:MessageItem>(message:String, items:Rest<T>):Thenable<Null<T>> {})
	@:overload(function<T:MessageItem>(message:String, options:MessageOptions, items:Rest<T>):Thenable<Null<T>> {})
	@:overload(function(message:String, items:Rest<String>):Thenable<Null<String>> {})
	function showErrorMessage(message:String, options:MessageOptions, items:Rest<String>):Thenable<Null<String>>;

	/**
	 * Shows a selection list.
	 *
	 * @param items An array of strings, or a promise that resolves to an array of strings.
	 * @param options Configures the behavior of the selection list.
	 * @param token A token that can be used to signal cancellation.
	 * @return A promise that resolves to the selection or `undefined`.
	 */
	@:overload(function(items:EitherType<ReadOnlyArray<String>, Thenable<ReadOnlyArray<String>>>, ?options:QuickPickOptions,
		?token:CancellationToken):Thenable<Null<String>> {})
	function showQuickPick<T:QuickPickItem>(items:EitherType<ReadOnlyArray<T>, Thenable<ReadOnlyArray<T>>>, ?options:QuickPickOptions,
		?token:CancellationToken):Thenable<Null<T>>;

	/**
	 * Shows a selection list allowing multiple selections.
	 *
	 * @param items An array of items, or a promise that resolves to an array of items.
	 * @param options Configures the behavior of the selection list.
	 * @param token A token that can be used to signal cancellation.
	 * @return A promise that resolves to the selected items or `undefined`.
	 */
	// see #13 for details on why this is needed
	extern inline function showQuickPickMany<T:QuickPickItem>(items:EitherType<ReadOnlyArray<T>, Thenable<ReadOnlyArray<T>>>, ?options:QuickPickOptions,
			?token:CancellationToken):Thenable<Null<Array<T>>> {
		if (options == null)
			options = {canPickMany: true};
		else
			options.canPickMany = true;
		return cast showQuickPick(items, options, if (token == null) js.Lib.undefined else token);
	}

	/**
	 * Shows a selection list of {@link workspace.workspaceFolders workspace folders} to pick from.
	 * Returns `undefined` if no folder is open.
	 *
	 * @param options Configures the behavior of the workspace folder list.
	 * @return A promise that resolves to the workspace folder or `undefined`.
	 */
	function showWorkspaceFolderPick(?options:WorkspaceFolderPickOptions):Thenable<Null<WorkspaceFolder>>;

	/**
	 * Shows a file open dialog to the user which allows to select a file
	 * for opening-purposes.
	 *
	 * @param options Options that control the dialog.
	 * @returns A promise that resolves to the selected resources or `undefined`.
	 */
	function showOpenDialog(?options:OpenDialogOptions):Thenable<Null<Array<Uri>>>;

	/**
	 * Shows a file save dialog to the user which allows to select a file
	 * for saving-purposes.
	 *
	 * @param options Options that control the dialog.
	 * @returns A promise that resolves to the selected resource or `undefined`.
	 */
	function showSaveDialog(?options:SaveDialogOptions):Thenable<Null<Uri>>;

	/**
	 * Opens an input box to ask the user for input.
	 *
	 * The returned value will be undefined if the input box was canceled (e.g. pressing ESC). Otherwise the
	 * returned value will be the string typed by the user or an empty string if the user did not type
	 * anything but dismissed the input box with OK.
	 *
	 * @param options Configures the behavior of the input box.
	 * @param token A token that can be used to signal cancellation.
	 * @return A promise that resolves to a string the user provided or to `undefined` in case of dismissal.
	 */
	function showInputBox(?options:InputBoxOptions, ?token:CancellationToken):Thenable<Null<String>>;

	/**
	 * Creates a {@link QuickPick} to let the user pick an item from a list
	 * of items of type T.
	 *
	 * Note that in many cases the more convenient {@link window.showQuickPick}
	 * is easier to use. {@link window.createQuickPick} should be used
	 * when {@link window.showQuickPick} does not offer the required flexibility.
	 *
	 * @return A new {@link QuickPick}.
	 */
	function createQuickPick<T:QuickPickItem>():QuickPick<T>;

	/**
	 * Creates a {@link InputBox} to let the user enter some text input.
	 *
	 * Note that in many cases the more convenient {@link window.showInputBox}
	 * is easier to use. {@link window.createInputBox} should be used
	 * when {@link window.showInputBox} does not offer the required flexibility.
	 *
	 * @return A new {@link InputBox}.
	 */
	function createInputBox():InputBox;

	/**
	 * Creates a new {@link OutputChannel output channel} with the given name.
	 *
	 * @param name Human-readable string which will be used to represent the channel in the UI.
	 */
	function createOutputChannel(name:String):OutputChannel;

	/**
	 * Create and show a new webview panel.
	 *
	 * @param viewType Identifies the type of the webview panel.
	 * @param title Title of the panel.
	 * @param showOptions Where to show the webview in the editor. If preserveFocus is set, the new webview will not take focus.
	 * @param options Settings for the new panel.
	 *
	 * @return New webview panel.
	 */
	function createWebviewPanel(viewType:String, title:String, showOptions:EitherType<ViewColumn, {viewColumn:ViewColumn, ?preserveFocus:Bool}>,
		?options:WebviewPanelOptions & WebviewOptions):WebviewPanel;

	/**
	 * Set a message to the status bar. This is a short hand for the more powerful
	 * status bar {@link window.createStatusBarItem items}.
	 *
	 * *Note* that status bar messages without hide arguments stack and that they must be disposed when no
	 * longer used.
	 *
	 * @param text The message to show, supports icon substitution as in status bar {@link StatusBarItem.text items}.
	 * @param hideAfterTimeout Timeout in milliseconds after which the message will be disposed.
	 * @param hideWhenDone Thenable on which completion (resolve or reject) the message will be disposed.
	 * @return A disposable which hides the status bar message.
	 */
	@:overload(function(text:String, hideAfterTimeout:Float):Disposable {})
	@:overload(function(text:String, hideWhenDone:Thenable<Dynamic>):Disposable {})
	function setStatusBarMessage(text:String):Disposable;

	/**
	 * Show progress in the Source Control viewlet while running the given callback and while
	 * its returned promise isn't resolve or rejected.
	 *
	 * @deprecated Use `withProgress` instead.
	 *
	 * @param task A callback returning a promise. Progress increments can be reported with
	 * the provided {@link Progress}-object.
	 * @return The thenable the task did return.
	 */
	@:deprecated("Use `withProgress` instead.")
	function withScmProgress<R>(task:Progress<Float>->Thenable<R>):Thenable<R>;

	/**
	 * Show progress in the editor. Progress is shown while running the given callback
	 * and while the promise it returned isn't resolved nor rejected. The location at which
	 * progress should show (and other details) is defined via the passed {@linkcode ProgressOptions}.
	 *
	 * @param task A callback returning a promise. Progress state can be reported with
	 * the provided {@link Progress}-object.
	 *
	 * To report discrete progress, use `increment` to indicate how much work has been completed. Each call with
	 * a `increment` value will be summed up and reflected as overall progress until 100% is reached (a value of
	 * e.g. `10` accounts for `10%` of work done).
	 * Note that currently only `ProgressLocation.Notification` is capable of showing discrete progress.
	 *
	 * To monitor if the operation has been cancelled by the user, use the provided {@linkcode CancellationToken}.
	 * Note that currently only `ProgressLocation.Notification` is supporting to show a cancel button to cancel the
	 * long running operation.
	 *
	 * @return The thenable the task-callback returned.
	 */
	function withProgress<R>(options:ProgressOptions, task:Progress<{?message:String, ?increment:Float}>->CancellationToken->Thenable<R>):Thenable<R>;

	/**
	 * Creates a status bar {@link StatusBarItem item}.
	 *
	 * @param id The unique identifier of the item.
	 * @param alignment The alignment of the item.
	 * @param priority The priority of the item. Higher values mean the item should be shown more to the left.
	 * @return A new status bar item.
	 */
	@:overload(function(id:String, ?alignment:StatusBarAlignment, ?priority:Float):StatusBarItem {})
	function createStatusBarItem(?alignment:StatusBarAlignment, ?priority:Float):StatusBarItem;

	/**
	 * Creates a {@link Terminal} with a backing shell process. The cwd of the terminal will be the workspace
	 * directory if it exists.
	 *
	 * @param name Optional human-readable string which will be used to represent the terminal in the UI.
	 * @param shellPath Optional path to a custom shell executable to be used in the terminal.
	 * @param shellArgs Optional args for the custom shell executable. A string can be used on Windows only which
	 * allows specifying shell args in
	 * [command-line format](https://msdn.microsoft.com/en-au/08dfcab2-eb6e-49a4-80eb-87d4076c98c6).
	 * @param options A TerminalOptions object describing the characteristics of the new terminal.
	 * @param options An {@link ExtensionTerminalOptions} object describing
	 * the characteristics of the new terminal.
	 * @return A new Terminal.
	 * @throws When running in an environment where a new process cannot be started.
	 */
	@:overload(function(options:TerminalOptions):Terminal {})
	@:overload(function(options:ExtensionTerminalOptions):Terminal {})
	function createTerminal(?name:String, ?shellPath:String, ?shellArgs:EitherType<Array<String>, String>):Terminal;

	/**
	 * Register a {@link TreeDataProvider} for the view contributed using the extension point `views`.
	 * This will allow you to contribute data to the {@link TreeView} and update if the data changes.
	 *
	 * **Note:** To get access to the {@link TreeView} and perform operations on it, use {@link window.createTreeView createTreeView}.
	 *
	 * @param viewId Id of the view contributed using the extension point `views`.
	 * @param treeDataProvider A {@link TreeDataProvider} that provides tree data for the view
	 */
	function registerTreeDataProvider<T>(viewId:String, treeDataProvider:TreeDataProvider<T>):Disposable;

	/**
	 * Create a {@link TreeView} for the view contributed using the extension point `views`.
	 * @param viewId Id of the view contributed using the extension point `views`.
	 * @param options Options for creating the {@link TreeView}
	 * @returns a {@link TreeView}.
	 */
	function createTreeView<T>(viewId:String, options:TreeViewOptions<T>):TreeView<T>;

	/**
	 * Registers a {@link UriHandler uri handler} capable of handling system-wide {@link Uri uris}.
	 * In case there are multiple windows open, the topmost window will handle the uri.
	 * A uri handler is scoped to the extension it is contributed from; it will only
	 * be able to handle uris which are directed to the extension itself. A uri must respect
	 * the following rules:
	 *
	 * - The uri-scheme must be `vscode.env.uriScheme`;
	 * - The uri-authority must be the extension id (e.g. `my.extension`);
	 * - The uri-path, -query and -fragment parts are arbitrary.
	 *
	 * For example, if the `my.extension` extension registers a uri handler, it will only
	 * be allowed to handle uris with the prefix `product-name://my.extension`.
	 *
	 * An extension can only register a single uri handler in its entire activation lifetime.
	 *
	 * * *Note:* There is an activation event `onUri` that fires when a uri directed for
	 * the current extension is about to be handled.
	 *
	 * @param handler The uri handler to register for this extension.
	 */
	function registerUriHandler(handler:UriHandler):Disposable;

	/**
	 * Registers a webview panel serializer.
	 *
	 * Extensions that support reviving should have an `"onWebviewPanel:viewType"` activation event and
	 * make sure that {@link registerWebviewPanelSerializer} is called during activation.
	 *
	 * Only a single serializer may be registered at a time for a given `viewType`.
	 *
	 * @param viewType Type of the webview panel that can be serialized.
	 * @param serializer Webview serializer.
	 */
	function registerWebviewPanelSerializer<T>(viewType:String, serializer:WebviewPanelSerializer<T>):Disposable;

	/**
	 * Register a new provider for webview views.
	 *
	 * @param viewId Unique id of the view. This should match the `id` from the
	 *   `views` contribution in the package.json.
	 * @param provider Provider for the webview views.
	 *
	 * @return Disposable that unregisters the provider.
	 */
	function registerWebviewViewProvider(viewId:String, provider:WebviewViewProvider, ?options:{
		/**
		 * Content settings for the webview created for this view.
		 */
		var ?webviewOptions(default, null):{
			/**
			 * Controls if the webview element itself (iframe) is kept around even when the view
			 * is no longer visible.
			 *
			 * Normally the webview's html context is created when the view becomes visible
			 * and destroyed when it is hidden. Extensions that have complex state
			 * or UI can set the `retainContextWhenHidden` to make the editor keep the webview
			 * context around, even when the webview moves to a background tab. When a webview using
			 * `retainContextWhenHidden` becomes hidden, its scripts and other dynamic content are suspended.
			 * When the view becomes visible again, the context is automatically restored
			 * in the exact same state it was in originally. You cannot send messages to a
			 * hidden webview, even with `retainContextWhenHidden` enabled.
			 *
			 * `retainContextWhenHidden` has a high memory overhead and should only be used if
			 * your view's context cannot be quickly saved and restored.
			 */
			var ?retainContextWhenHidden(default, null):Bool;
		};
	}):Disposable;

	/**
	 * Register a provider for custom editors for the `viewType` contributed by the `customEditors` extension point.
	 *
	 * When a custom editor is opened, an `onCustomEditor:viewType` activation event is fired. Your extension
	 * must register a {@linkcode CustomTextEditorProvider}, {@linkcode CustomReadonlyEditorProvider},
	 * {@linkcode CustomEditorProvider}for `viewType` as part of activation.
	 *
	 * @param viewType Unique identifier for the custom editor provider. This should match the `viewType` from the
	 *   `customEditors` contribution point.
	 * @param provider Provider that resolves custom editors.
	 * @param options Options for the provider.
	 *
	 * @return Disposable that unregisters the provider.
	 */
	function registerCustomEditorProvider<T:CustomDocument>(viewType:String,
		provider:EitherType<CustomTextEditorProvider, EitherType<CustomReadonlyEditorProvider<T>, CustomEditorProvider<T>>>, ?options:{
			/**
			 * Content settings for the webview panels created for this custom editor.
			 */
			final ?webviewOptions:WebviewPanelOptions;

			/**
			 * Only applies to `CustomReadonlyEditorProvider | CustomEditorProvider`.
			 *
			 * Indicates that the provider allows multiple editor instances to be open at the same time for
			 * the same resource.
			 *
			 * By default, the editor only allows one editor instance to be open at a time for each resource. If the
			 * user tries to open a second editor instance for the resource, the first one is instead moved to where
			 * the second one was to be opened.
			 *
			 * When `supportsMultipleEditorsPerDocument` is enabled, users can split and create copies of the custom
			 * editor. In this case, the custom editor must make sure it can properly synchronize the states of all
			 * editor instances for a resource so that they are consistent.
			 */
			final ?supportsMultipleEditorsPerDocument:Bool;
		}):Disposable;

	/**
	 * Register provider that enables the detection and handling of links within the terminal.
	 * @param provider The provider that provides the terminal links.
	 * @return Disposable that unregisters the provider.
	 */
	function registerTerminalLinkProvider<T:TerminalLink>(provider:TerminalLinkProvider<T>):Disposable;

	/**
	 * Registers a provider for a contributed terminal profile.
	 * @param id The ID of the contributed terminal profile.
	 * @param provider The terminal profile provider.
	 */
	function registerTerminalProfileProvider(id:String, provider:TerminalProfileProvider):Disposable;

	/**
	 * Register a file decoration provider.
	 *
	 * @param provider A {@link FileDecorationProvider}.
	 * @return A {@link Disposable} that unregisters the provider.
	 */
	function registerFileDecorationProvider(provider:FileDecorationProvider):Disposable;

	/**
	 * The currently active color theme as configured in the settings. The active
	 * theme can be changed via the `workbench.colorTheme` setting.
	 */
	var activeColorTheme:ColorTheme;

	/**
	 * An {@link Event} which fires when the active color theme is changed or has changes.
	 */
	var onDidChangeActiveColorTheme(default, null):Event<ColorTheme>;
}

extern class VscodeExtensions {
	/**
	 * Get an extension by its full identifier in the form of: `publisher.name`.
	 *
	 * @param extensionId An extension identifier.
	 * @return An extension or `undefined`.
	 */
	function getExtension<T>(extensionId:String):Null<Extension<T>>;

	/**
	 * All extensions currently known to the system.
	 */
	var all(default, null):ReadOnlyArray<Extension<Any>>;

	/**
	 * An event which fires when `extensions.all` changes. This can happen when extensions are
	 * installed, uninstalled, enabled or disabled.
	 */
	var onDidChange(default, null):Event<Void>;
}

extern class VscodeScm {
	/**
	 * The {@link SourceControlInputBox input box} for the last source control
	 * created by the extension.
	 *
	 * @deprecated Use SourceControl.inputBox instead
	 */
	@:deprecated("Use SourceControl.inputBox instead")
	var inputBox(default, null):SourceControlInputBox;

	/**
	 * Creates a new {@link SourceControl source control} instance.
	 *
	 * @param id An `id` for the source control. Something short, e.g.: `git`.
	 * @param label A human-readable string for the source control. E.g.: `Git`.
	 * @param rootUri An optional Uri of the root of the source control. E.g.: `Uri.parse(workspaceRoot)`.
	 * @return An instance of {@link SourceControl source control}.
	 */
	function createSourceControl(id:String, label:String, ?rootUri:Uri):SourceControl;
}

extern class VscodeLanguages {
	/**
	 * Return the identifiers of all known languages.
	 * @return Promise resolving to an array of identifier strings.
	 */
	function getLanguages():Thenable<Array<String>>;

	/**
	 * Set (and change) the {@link TextDocument.languageId language} that is associated
	 * with the given document.
	 *
	 * *Note* that calling this function will trigger the {@linkcode workspace.onDidCloseTextDocument onDidCloseTextDocument} event
	 * followed by the {@linkcode workspace.onDidOpenTextDocument onDidOpenTextDocument} event.
	 *
	 * @param document The document which language is to be changed
	 * @param languageId The new language identifier.
	 * @returns A thenable that resolves with the updated document.
	 */
	function setTextDocumentLanguage(document:TextDocument, languageId:String):Thenable<TextDocument>;

	/**
	 * Compute the match between a document {@link DocumentSelector selector} and a document. Values
	 * greater than zero mean the selector matches the document.
	 *
	 * A match is computed according to these rules:
	 * 1. When {@linkcode DocumentSelector} is an array, compute the match for each contained `DocumentFilter` or language identifier and take the maximum value.
	 * 2. A string will be desugared to become the `language`-part of a {@linkcode DocumentFilter}, so `"fooLang"` is like `{ language: "fooLang" }`.
	 * 3. A {@linkcode DocumentFilter} will be matched against the document by comparing its parts with the document. The following rules apply:
	 *  1. When the `DocumentFilter` is empty (`{}`) the result is `0`
	 *  2. When `scheme`, `language`, or `pattern` are defined but one doesn’t match, the result is `0`
	 *  3. Matching against `*` gives a score of `5`, matching via equality or via a glob-pattern gives a score of `10`
	 *  4. The result is the maximum value of each match
	 *
	 * Samples:
	 * ```js
	 * // default document from disk (file-scheme)
	 * doc.uri; //'file:///my/file.js'
	 * doc.languageId; // 'javascript'
	 * match('javascript', doc); // 10;
	 * match({language: 'javascript'}, doc); // 10;
	 * match({language: 'javascript', scheme: 'file'}, doc); // 10;
	 * match('*', doc); // 5
	 * match('fooLang', doc); // 0
	 * match(['fooLang', '*'], doc); // 5
	 *
	 * // virtual document, e.g. from git-index
	 * doc.uri; // 'git:/my/file.js'
	 * doc.languageId; // 'javascript'
	 * match('javascript', doc); // 10;
	 * match({language: 'javascript', scheme: 'git'}, doc); // 10;
	 * match('*', doc); // 5
	 * ```
	 *
	 * @param selector A document selector.
	 * @param document A text document.
	 * @return A number `>0` when the selector matches and `0` when the selector does not match.
	 */
	function match(selector:DocumentSelector, document:TextDocument):Float;

	/**
	 * An {@link Event} which fires when the global set of diagnostics changes. This is
	 * newly added and removed diagnostics.
	 */
	var onDidChangeDiagnostics(default, never):Event<DiagnosticChangeEvent>;

	/**
	 * Get all diagnostics for a given resource.
	 *
	 * @param resource A resource
	 * @returns An array of {@link Diagnostic diagnostics} objects or an empty array.
	 *
	 * OR
	 *
	 * Get all diagnostics.
	 *
	 * @returns An array of uri-diagnostics tuples or an empty array.
	 */
	@:overload(function(resource:Uri):Array<Diagnostic> {})
	function getDiagnostics():Array<VscodeLanguagesGetDiagnosticsReturn>;

	/**
	 * Create a diagnostics collection.
	 *
	 * @param name The {@link DiagnosticCollection.name name} of the collection.
	 * @return A new diagnostic collection.
	 */
	function createDiagnosticCollection(?name:String):DiagnosticCollection;

	/**
	 * Register a completion provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their {@link languages.match score} and groups of equal score are sequentially asked for
	 * completion items. The process stops when one or many providers of a group return a
	 * result. A failing provider (rejected promise or exception) will not fail the whole
	 * operation.
	 *
	 * A completion item provider can be associated with a set of `triggerCharacters`. When trigger
	 * characters are being typed, completions are requested but only from providers that registered
	 * the typed character. Because of that trigger characters should be different than {@link LanguageConfiguration.wordPattern word characters},
	 * a common trigger character is `.` to trigger member completions.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A completion provider.
	 * @param triggerCharacters Trigger completion when the user types one of the characters.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerCompletionItemProvider<T:CompletionItem>(selector:DocumentSelector, provider:CompletionItemProvider<T>,
		triggerCharacters:Rest<String>):Disposable;

	/**
	 * Register a code action provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A code action provider.
	 * @param metadata Metadata about the kind of code actions the provider provides.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerCodeActionsProvider<T:CodeAction>(selector:DocumentSelector, provider:CodeActionProvider<T>,
		?metadata:CodeActionProviderMetadata):Disposable;

	/**
	 * Register a code lens provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A code lens provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerCodeLensProvider<T:CodeLens>(selector:DocumentSelector, provider:CodeLensProvider<T>):Disposable;

	/**
	 * Register a definition provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A definition provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerDefinitionProvider(selector:DocumentSelector, provider:DefinitionProvider):Disposable;

	/**
	 * Register an implementation provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider An implementation provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerImplementationProvider(selector:DocumentSelector, provider:ImplementationProvider):Disposable;

	/**
	 * Register a type definition provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A type definition provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerTypeDefinitionProvider(selector:DocumentSelector, provider:TypeDefinitionProvider):Disposable;

	/**
	 * Register a declaration provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A declaration provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerDeclarationProvider(selector:DocumentSelector, provider:DeclarationProvider):Disposable;

	/**
	 * Register a hover provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A hover provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerHoverProvider(selector:DocumentSelector, provider:HoverProvider):Disposable;

	/**
	 * Register a provider that locates evaluatable expressions in text documents.
	 * The editor will evaluate the expression in the active debug session and will show the result in the debug hover.
	 *
	 * If multiple providers are registered for a language an arbitrary provider will be used.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider An evaluatable expression provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerEvaluatableExpressionProvider(selector:DocumentSelector, provider:EvaluatableExpressionProvider):Disposable;

	/**
	 * Register a provider that returns data for the debugger's 'inline value' feature.
	 * Whenever the generic debugger has stopped in a source file, providers registered for the language of the file
	 * are called to return textual data that will be shown in the editor at the end of lines.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider An inline values provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerInlineValuesProvider(selector:DocumentSelector, provider:InlineValuesProvider):Disposable;

	/**
	 * Register a document highlight provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their {@link languages.match score} and groups sequentially asked for document highlights.
	 * The process stops when a provider returns a `non-falsy` or `non-failure` result.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A document highlight provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerDocumentHighlightProvider(selector:DocumentSelector, provider:DocumentHighlightProvider):Disposable;

	/**
	 * Register a document symbol provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A document symbol provider.
	 * @param metaData metadata about the provider
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerDocumentSymbolProvider(selector:DocumentSelector, provider:DocumentSymbolProvider, ?metaData:DocumentSymbolProviderMetadata):Disposable;

	/**
	 * Register a workspace symbol provider.
	 *
	 * Multiple providers can be registered. In that case providers are asked in parallel and
	 * the results are merged. A failing provider (rejected promise or exception) will not cause
	 * a failure of the whole operation.
	 *
	 * @param provider A workspace symbol provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerWorkspaceSymbolProvider<T:SymbolInformation>(provider:WorkspaceSymbolProvider<T>):Disposable;

	/**
	 * Register a reference provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A reference provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerReferenceProvider(selector:DocumentSelector, provider:ReferenceProvider):Disposable;

	/**
	 * Register a rename provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their {@link languages.match score} and asked in sequence. The first provider producing a result
	 * defines the result of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A rename provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerRenameProvider(selector:DocumentSelector, provider:RenameProvider):Disposable;

	/**
	 * Register a semantic tokens provider for a whole document.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their {@link languages.match score} and the best-matching provider is used. Failure
	 * of the selected provider will cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A document semantic tokens provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerDocumentSemanticTokensProvider(selector:DocumentSelector, provider:DocumentSemanticTokensProvider,
		legend:SemanticTokensLegend):Disposable;

	/**
	 * Register a semantic tokens provider for a document range.
	 *
	 * *Note:* If a document has both a `DocumentSemanticTokensProvider` and a `DocumentRangeSemanticTokensProvider`,
	 * the range provider will be invoked only initially, for the time in which the full document provider takes
	 * to resolve the first request. Once the full document provider resolves the first request, the semantic tokens
	 * provided via the range provider will be discarded and from that point forward, only the document provider
	 * will be used.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their {@link languages.match score} and the best-matching provider is used. Failure
	 * of the selected provider will cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A document range semantic tokens provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerDocumentRangeSemanticTokensProvider(selector:DocumentSelector, provider:DocumentRangeSemanticTokensProvider,
		legend:SemanticTokensLegend):Disposable;

	/**
	 * Register a formatting provider for a document.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their {@link languages.match score} and the best-matching provider is used. Failure
	 * of the selected provider will cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A document formatting edit provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerDocumentFormattingEditProvider(selector:DocumentSelector, provider:DocumentFormattingEditProvider):Disposable;

	/**
	 * Register a formatting provider for a document range.
	 *
	 * *Note:* A document range provider is also a {@link DocumentFormattingEditProvider document formatter}
	 * which means there is no need to {@link languages.registerDocumentFormattingEditProvider register} a document
	 * formatter when also registering a range provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their {@link languages.match score} and the best-matching provider is used. Failure
	 * of the selected provider will cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A document range formatting edit provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerDocumentRangeFormattingEditProvider(selector:DocumentSelector, provider:DocumentRangeFormattingEditProvider):Disposable;

	/**
	 * Register a formatting provider that works on type. The provider is active when the user enables the setting `editor.formatOnType`.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their {@link languages.match score} and the best-matching provider is used. Failure
	 * of the selected provider will cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider An on type formatting edit provider.
	 * @param firstTriggerCharacter A character on which formatting should be triggered, like `}`.
	 * @param moreTriggerCharacter More trigger characters.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerOnTypeFormattingEditProvider(selector:DocumentSelector, provider:OnTypeFormattingEditProvider, firstTriggerCharacter:String,
		moreTriggerCharacter:Rest<String>):Disposable;

	/**
	 * Register a signature help provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their {@link languages.match score} and called sequentially until a provider returns a
	 * valid result.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A signature help provider.
	 * @param triggerCharacters Trigger signature help when the user types one of the characters, like `,` or `(`.
	 * @param metadata Information about the provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	@:overload(function(selector:DocumentSelector, provider:SignatureHelpProvider, triggerCharacters:Rest<String>):Disposable {})
	function registerSignatureHelpProvider(selector:DocumentSelector, provider:SignatureHelpProvider, metadata:SignatureHelpProviderMetadata):Disposable;

	/**
	 * Register a document link provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A document link provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerDocumentLinkProvider<T:DocumentLink>(selector:DocumentSelector, provider:DocumentLinkProvider<T>):Disposable;

	/**
	 * Register a color provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A color provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerColorProvider(selector:DocumentSelector, provider:DocumentColorProvider):Disposable;

	/**
	 * Register a folding range provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged.
	 * If multiple folding ranges start at the same position, only the range of the first registered provider is used.
	 * If a folding range overlaps with an other range that has a smaller position, it is also ignored.
	 *
	 * A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A folding range provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerFoldingRangeProvider(selector:DocumentSelector, provider:FoldingRangeProvider):Disposable;

	/**
	 * Register a selection range provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A selection range provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerSelectionRangeProvider(selector:DocumentSelector, provider:SelectionRangeProvider):Disposable;

	/**
	 * Register a call hierarchy provider.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A call hierarchy provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerCallHierarchyProvider(selector:DocumentSelector, provider:CallHierarchyProvider):Disposable;

	/**
	 * Register a linked editing range provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their {@link languages.match score} and the best-matching provider that has a result is used. Failure
	 * of the selected provider will cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A linked editing range provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerLinkedEditingRangeProvider(selector:DocumentSelector, provider:LinkedEditingRangeProvider):Disposable;

	/**
	 * Set a {@link LanguageConfiguration language configuration} for a language.
	 *
	 * @param language A language identifier like `typescript`.
	 * @param configuration Language configuration.
	 * @return A {@link Disposable} that unsets this configuration.
	 */
	function setLanguageConfiguration(language:String, configuration:LanguageConfiguration):Disposable;
}

extern class VscodeWorkspace {
	/**
	 * A {@link FileSystem file system} instance that allows to interact with local and remote
	 * files, e.g. `vscode.workspace.fs.readDirectory(someUri)` allows to retrieve all entries
	 * of a directory or `vscode.workspace.fs.stat(anotherUri)` returns the meta data for a
	 * file.
	 */
	var fs(default, null):FileSystem;

	/**
	 * The uri of the first entry of {@linkcode workspace.workspaceFolders workspaceFolders}
	 * as `string`. `undefined` if there is no first entry.
	 *
	 * Refer to https://code.visualstudio.com/docs/editor/workspaces for more information
	 * on workspaces.
	 *
	 * @deprecated Use {@linkcode workspace.workspaceFolders workspaceFolders} instead.
	 */
	@:deprecated("Use `workspace.workspaceFolders` instead.")
	var rootPath(default, null):Null<String>;

	/**
	 * List of workspace folders (0-N) that are open in the editor. `undefined` when no workspace
	 * has been opened.
	 *
	 * Refer to https://code.visualstudio.com/docs/editor/workspaces for more information
	 * on workspaces.
	 */
	var workspaceFolders(default, null):Null<ReadOnlyArray<WorkspaceFolder>>;

	/**
	 * The name of the workspace. `undefined` when no workspace
	 * has been opened.
	 *
	 * Refer to https://code.visualstudio.com/docs/editor/workspaces for more information on
	 * the concept of workspaces.
	 */
	var name(default, null):Null<String>;

	/**
	 * The location of the workspace file, for example:
	 *
	 * `file:///Users/name/Development/myProject.code-workspace`
	 *
	 * or
	 *
	 * `untitled:1555503116870`
	 *
	 * for a workspace that is untitled and not yet saved.
	 *
	 * Depending on the workspace that is opened, the value will be:
	 *  * `undefined` when no workspace is opened
	 *  * the path of the workspace file as `Uri` otherwise. if the workspace
	 * is untitled, the returned URI will use the `untitled:` scheme
	 *
	 * The location can e.g. be used with the `vscode.openFolder` command to
	 * open the workspace again after it has been closed.
	 *
	 * **Example:**
	 * ```typescript
	 * vscode.commands.executeCommand('vscode.openFolder', uriOfWorkspace);
	 * ```
	 *
	 * Refer to https://code.visualstudio.com/docs/editor/workspaces for more information on
	 * the concept of workspaces.
	 *
	 * **Note:** it is not advised to use `workspace.workspaceFile` to write
	 * configuration data into the file. You can use `workspace.getConfiguration().update()`
	 * for that purpose which will work both when a single folder is opened as
	 * well as an untitled or saved workspace.
	 */
	var workspaceFile(default, null):Null<Uri>;

	/**
	 * An event that is emitted when a workspace folder is added or removed.
	 */
	var onDidChangeWorkspaceFolders(default, null):Event<WorkspaceFoldersChangeEvent>;

	/**
	 * Returns the {@link WorkspaceFolder workspace folder} that contains a given uri.
	 * * returns `undefined` when the given uri doesn't match any workspace folder
	 * * returns the *input* when the given uri is a workspace folder itself
	 *
	 * @param uri An uri.
	 * @return A workspace folder or `undefined`
	 */
	function getWorkspaceFolder(uri:Uri):Null<WorkspaceFolder>;

	/**
	 * Returns a path that is relative to the workspace folder or folders.
	 *
	 * When there are no {@link workspace.workspaceFolders workspace folders} or when the path
	 * is not contained in them, the input is returned.
	 *
	 * @param pathOrUri A path or uri. When a uri is given its {@link Uri.fsPath fsPath} is used.
	 * @param includeWorkspaceFolder When `true` and when the given path is contained inside a
	 * workspace folder the name of the workspace is prepended. Defaults to `true` when there are
	 * multiple workspace folders and `false` otherwise.
	 * @return A path relative to the root or the input.
	 */
	function asRelativePath(pathOrUri:EitherType<String, Uri>, ?includeWorkspaceFolder:Bool):String;

	/**
	 * This method replaces `deleteCount` {@link workspace.workspaceFolders workspace folders} starting at index `start`
	 * by an optional set of `workspaceFoldersToAdd` on the `vscode.workspace.workspaceFolders` array. This "splice"
	 * behavior can be used to add, remove and change workspace folders in a single operation.
	 *
	 * If the first workspace folder is added, removed or changed, the currently executing extensions (including the
	 * one that called this method) will be terminated and restarted so that the (deprecated) `rootPath` property is
	 * updated to point to the first workspace folder.
	 *
	 * Use the {@linkcode onDidChangeWorkspaceFolders onDidChangeWorkspaceFolders()} event to get notified when the
	 * workspace folders have been updated.
	 *
	 * **Example:** adding a new workspace folder at the end of workspace folders
	 * ```typescript
	 * workspace.updateWorkspaceFolders(workspace.workspaceFolders ? workspace.workspaceFolders.length : 0, null, { uri: ...});
	 * ```
	 *
	 * **Example:** removing the first workspace folder
	 * ```typescript
	 * workspace.updateWorkspaceFolders(0, 1);
	 * ```
	 *
	 * **Example:** replacing an existing workspace folder with a new one
	 * ```typescript
	 * workspace.updateWorkspaceFolders(0, 1, { uri: ...});
	 * ```
	 *
	 * It is valid to remove an existing workspace folder and add it again with a different name
	 * to rename that folder.
	 *
	 * **Note:** it is not valid to call {@link updateWorkspaceFolders updateWorkspaceFolders()} multiple times
	 * without waiting for the {@linkcode onDidChangeWorkspaceFolders onDidChangeWorkspaceFolders()} to fire.
	 *
	 * @param start the zero-based location in the list of currently opened {@link WorkspaceFolder workspace folders}
	 * from which to start deleting workspace folders.
	 * @param deleteCount the optional number of workspace folders to remove.
	 * @param workspaceFoldersToAdd the optional variable set of workspace folders to add in place of the deleted ones.
	 * Each workspace is identified with a mandatory URI and an optional name.
	 * @return true if the operation was successfully started and false otherwise if arguments were used that would result
	 * in invalid workspace folder state (e.g. 2 folders with the same URI).
	 */
	function updateWorkspaceFolders(start:Int, deleteCount:Null<Int>, workspaceFoldersToAdd:Rest<{uri:Uri, ?name:String}>):Bool;

	/**
	 * Creates a file system watcher.
	 *
	 * A glob pattern that filters the file events on their absolute path must be provided. Optionally,
	 * flags to ignore certain kinds of events can be provided. To stop listening to events the watcher must be disposed.
	 *
	 * *Note* that only files within the current {@link workspace.workspaceFolders workspace folders} can be watched.
	 * *Note* that when watching for file changes such as '**​/*.js', notifications will not be sent when a parent folder is
	 * moved or deleted (this is a known limitation of the current implementation and may change in the future).
	 *
	 * @param globPattern A {@link GlobPattern glob pattern} that is applied to the absolute paths of created, changed,
	 * and deleted files. Use a {@link RelativePattern relative pattern} to limit events to a certain {@link WorkspaceFolder workspace folder}.
	 * @param ignoreCreateEvents Ignore when files have been created.
	 * @param ignoreChangeEvents Ignore when files have been changed.
	 * @param ignoreDeleteEvents Ignore when files have been deleted.
	 * @return A new file system watcher instance.
	 */
	function createFileSystemWatcher(globPattern:GlobPattern, ?ignoreCreateEvents:Bool, ?ignoreChangeEvents:Bool, ?ignoreDeleteEvents:Bool):FileSystemWatcher;

	/**
	 * Find files across all {@link workspace.workspaceFolders workspace folders} in the workspace.
	 *
	 * @example
	 * findFiles('**​/*.js', '**​/node_modules/**', 10)
	 *
	 * @param include A {@link GlobPattern glob pattern} that defines the files to search for. The glob pattern
	 * will be matched against the file paths of resulting matches relative to their workspace. Use a {@link RelativePattern relative pattern}
	 * to restrict the search results to a {@link WorkspaceFolder workspace folder}.
	 * @param exclude  A {@link GlobPattern glob pattern} that defines files and folders to exclude. The glob pattern
	 * will be matched against the file paths of resulting matches relative to their workspace. When `undefined`, default excludes and the user's
	 * configured excludes will apply. When `null`, no excludes will apply.
	 * @param maxResults An upper-bound for the result.
	 * @param token A token that can be used to signal cancellation to the underlying search engine.
	 * @return A thenable that resolves to an array of resource identifiers. Will return no results if no
	 * {@link workspace.workspaceFolders workspace folders} are opened.
	 */
	function findFiles(include:GlobPattern, ?exclude:Null<GlobPattern>, ?maxResults:Int, ?token:CancellationToken):Thenable<Array<Uri>>;

	/**
	 * Save all dirty files.
	 *
	 * @param includeUntitled Also save files that have been created during this session.
	 * @return A thenable that resolves when the files have been saved.
	 */
	function saveAll(?includeUntitled:Bool):Thenable<Bool>;

	/**
	 * Make changes to one or many resources or create, delete, and rename resources as defined by the given
	 * {@link WorkspaceEdit workspace edit}.
	 *
	 * All changes of a workspace edit are applied in the same order in which they have been added. If
	 * multiple textual inserts are made at the same position, these strings appear in the resulting text
	 * in the order the 'inserts' were made, unless that are interleaved with resource edits. Invalid sequences
	 * like 'delete file a' -> 'insert text in file a' cause failure of the operation.
	 *
	 * When applying a workspace edit that consists only of text edits an 'all-or-nothing'-strategy is used.
	 * A workspace edit with resource creations or deletions aborts the operation, e.g. consecutive edits will
	 * not be attempted, when a single edit fails.
	 *
	 * @param edit A workspace edit.
	 * @return A thenable that resolves when the edit could be applied.
	 */
	function applyEdit(edit:WorkspaceEdit):Thenable<Bool>;

	/**
	 * All text documents currently known to the editor.
	 */
	var textDocuments(default, null):ReadOnlyArray<TextDocument>;

	/**
	 * Opens a document. Will return early if this document is already open. Otherwise
	 * the document is loaded and the {@link workspace.onDidOpenTextDocument didOpen}-event fires.
	 *
	 * The document is denoted by an {@link Uri}. Depending on the {@link Uri.scheme scheme} the
	 * following rules apply:
	 * * `file`-scheme: Open a file on disk (`openTextDocument(Uri.file(path))`). Will be rejected if the file
	 * does not exist or cannot be loaded.
	 * * `untitled`-scheme: Open a blank untitled file with associated path (`openTextDocument(Uri.file(path).with({ scheme: 'untitled' }))`).
	 * The language will be derived from the file name.
	 * * For all other schemes contributed {@link TextDocumentContentProvider text document content providers} and
	 * {@link FileSystemProvider file system providers} are consulted.
	 *
	 * *Note* that the lifecycle of the returned document is owned by the editor and not by the extension. That means an
	 * {@linkcode workspace.onDidCloseTextDocument onDidClose}-event can occur at any time after opening it.
	 *
	 * ---
	 *
	 * A short-hand for `openTextDocument(Uri.file(fileName))`.
	 *
	 * ---
	 *
	 * Opens an untitled text document. The editor will prompt the user for a file
	 * path when the document is to be saved. The `options` parameter allows to
	 * specify the *language* and/or the *content* of the document.
	 *
	 * @param uri Identifies the resource to open.
	 * @param fileName A name of a file on disk.
	 * @param options Options to control how the document will be created.
	 * @return A promise that resolves to a {@link TextDocument document}.
	 */
	@:overload(function(?options:{?language:String, ?content:String}):Thenable<TextDocument> {})
	@:overload(function(fileName:String):Thenable<TextDocument> {})
	function openTextDocument(uri:Uri):Thenable<TextDocument>;

	/**
	 * Register a text document content provider.
	 *
	 * Only one provider can be registered per scheme.
	 *
	 * @param scheme The uri-scheme to register for.
	 * @param provider A content provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerTextDocumentContentProvider(scheme:String, provider:TextDocumentContentProvider):Disposable;

	/**
	 * An event that is emitted when a {@link TextDocument text document} is opened or when the language id
	 * of a text document {@link languages.setTextDocumentLanguage has been changed}.
	 *
	 * To add an event listener when a visible text document is opened, use the {@link TextEditor} events in the
	 * {@link window} namespace. Note that:
	 *
	 * - The event is emitted before the {@link TextDocument document} is updated in the
	 * {@link window.activeTextEditor active text editor}
	 * - When a {@link TextDocument text document} is already open (e.g.: open in another {@link window.visibleTextEditors visible text editor}) this event is not emitted
	 *
	 */
	var onDidOpenTextDocument(default, null):Event<TextDocument>;

	/**
	 * An event that is emitted when a {@link TextDocument text document} is disposed or when the language id
	 * of a text document {@link languages.setTextDocumentLanguage has been changed}.
	 *
	 * *Note 1:* There is no guarantee that this event fires when an editor tab is closed, use the
	 * {@linkcode window.onDidChangeVisibleTextEditors onDidChangeVisibleTextEditors}-event to know when editors change.
	 *
	 * *Note 2:* A document can be open but not shown in an editor which means this event can fire
	 * for a document that has not been shown in an editor.
	 */
	var onDidCloseTextDocument(default, null):Event<TextDocument>;

	/**
	 * An event that is emitted when a {@link TextDocument text document} is changed. This usually happens
	 * when the {@link TextDocument.getText contents} changes but also when other things like the
	 * {@link TextDocument.isDirty dirty}-state changes.
	 */
	var onDidChangeTextDocument(default, null):Event<TextDocumentChangeEvent>;

	/**
	 * An event that is emitted when a {@link TextDocument text document} will be saved to disk.
	 *
	 * *Note 1:* Subscribers can delay saving by registering asynchronous work. For the sake of data integrity the editor
	 * might save without firing this event. For instance when shutting down with dirty files.
	 *
	 * *Note 2:* Subscribers are called sequentially and they can {@link TextDocumentWillSaveEvent.waitUntil delay} saving
	 * by registering asynchronous work. Protection against misbehaving listeners is implemented as such:
	 *  * there is an overall time budget that all listeners share and if that is exhausted no further listener is called
	 *  * listeners that take a long time or produce errors frequently will not be called anymore
	 *
	 * The current thresholds are 1.5 seconds as overall time budget and a listener can misbehave 3 times before being ignored.
	 */
	var onWillSaveTextDocument(default, null):Event<TextDocumentWillSaveEvent>;

	/**
	 * An event that is emitted when a {@link TextDocument text document} is saved to disk.
	 */
	var onDidSaveTextDocument(default, null):Event<TextDocument>;

	/**
	 * All notebook documents currently known to the editor.
	 */
	var notebookDocuments(default, null):ReadOnlyArray<NotebookDocument>;

	/**
	 * Open a notebook. Will return early if this notebook is already {@link notebook.notebookDocuments loaded}. Otherwise
	 * the notebook is loaded and the {@linkcode notebook.onDidOpenNotebookDocument onDidOpenNotebookDocument}-event fires.
	 *
	 * *Note* that the lifecycle of the returned notebook is owned by the editor and not by the extension. That means an
	 * {@linkcode notebook.onDidCloseNotebookDocument onDidCloseNotebookDocument}-event can occur at any time after.
	 *
	 * *Note* that opening a notebook does not show a notebook editor. This function only returns a notebook document which
	 * can be showns in a notebook editor but it can also be used for other things.
	 *
	 * ---
	 *
	 * Open an untitled notebook. The editor will prompt the user for a file
	 * path when the document is to be saved.
	 *
	 * @param uri The resource to open.
	 * @param notebookType The notebook type that should be used.
	 * @param content The initial contents of the notebook.
	 * @returns A promise that resolves to a {@link NotebookDocument notebook}
	 */
	@:overload(function(notebookType:String, ?content:NotebookData):Thenable<NotebookDocument> {})
	function openNotebookDocument(uri:Uri):Thenable<NotebookDocument>;

	/**
	 * Register a {@link NotebookSerializer notebook serializer}.
	 *
	 * A notebook serializer must be contributed through the `notebooks` extension point. When opening a notebook file, the editor will send
	 * the `onNotebook:<notebookType>` activation event, and extensions must register their serializer in return.
	 *
	 * @param notebookType A notebook.
	 * @param serializer A notebook serialzier.
	 * @param options Optional context options that define what parts of a notebook should be persisted
	 * @return A {@link Disposable} that unregisters this serializer when being disposed.
	 */
	function registerNotebookSerializer(notebookType:String, serializer:NotebookSerializer, ?options:NotebookDocumentContentOptions):Disposable;

	/**
	 * An event that is emitted when a {@link NotebookDocument notebook} is opened.
	 */
	var onDidOpenNotebookDocument(default, null):Event<NotebookDocument>;

	/**
	 * An event that is emitted when a {@link NotebookDocument notebook} is disposed.
	 *
	 * *Note 1:* There is no guarantee that this event fires when an editor tab is closed.
	 *
	 * *Note 2:* A notebook can be open but not shown in an editor which means this event can fire
	 * for a notebook that has not been shown in an editor.
	 */
	var onDidCloseNotebookDocument(default, null):Event<NotebookDocument>;

	/**
	 * An event that is emitted when files are being created.
	 *
	 * *Note 1:* This event is triggered by user gestures, like creating a file from the
	 * explorer, or from the {@linkcode workspace.applyEdit}-api. This event is *not* fired when
	 * files change on disk, e.g triggered by another application, or when using the
	 * {@linkcode FileSystem workspace.fs}-api.
	 *
	 * *Note 2:* When this event is fired, edits to files that are are being created cannot be applied.
	 */
	var onWillCreateFiles(default, null):Event<FileWillCreateEvent>;

	/**
	 * An event that is emitted when files have been created.
	 *
	 * *Note:* This event is triggered by user gestures, like creating a file from the
	 * explorer, or from the {@linkcode workspace.applyEdit}-api, but this event is *not* fired when
	 * files change on disk, e.g triggered by another application, or when using the
	 * {@linkcode FileSystem workspace.fs}-api.
	 */
	var onDidCreateFiles(default, null):Event<FileCreateEvent>;

	/**
	 * An event that is emitted when files are being deleted.
	 *
	 * *Note 1:* This event is triggered by user gestures, like deleting a file from the
	 * explorer, or from the {@linkcode workspace.applyEdit}-api, but this event is *not* fired when
	 * files change on disk, e.g triggered by another application, or when using the
	 * {@linkcode FileSystem workspace.fs}-api.
	 *
	 * *Note 2:* When deleting a folder with children only one event is fired.
	 */
	var onWillDeleteFiles(default, null):Event<FileWillDeleteEvent>;

	/**
	 * An event that is emitted when files have been deleted.
	 *
	 * *Note 1:* This event is triggered by user gestures, like deleting a file from the
	 * explorer, or from the {@linkcode workspace.applyEdit}-api, but this event is *not* fired when
	 * files change on disk, e.g triggered by another application, or when using the
	 * {@linkcode FileSystem workspace.fs}-api.
	 *
	 * *Note 2:* When deleting a folder with children only one event is fired.
	 */
	var onDidDeleteFiles(default, null):Event<FileDeleteEvent>;

	/**
	 * An event that is emitted when files are being renamed.
	 *
	 * *Note 1:* This event is triggered by user gestures, like renaming a file from the
	 * explorer, and from the {@linkcode workspace.applyEdit}-api, but this event is *not* fired when
	 * files change on disk, e.g triggered by another application, or when using the
	 * {@linkcode FileSystem workspace.fs}-api.
	 *
	 * *Note 2:* When renaming a folder with children only one event is fired.
	 */
	var onWillRenameFiles(default, null):Event<FileWillRenameEvent>;

	/**
	 * An event that is emitted when files have been renamed.
	 *
	 * *Note 1:* This event is triggered by user gestures, like renaming a file from the
	 * explorer, and from the {@linkcode workspace.applyEdit}-api, but this event is *not* fired when
	 * files change on disk, e.g triggered by another application, or when using the
	 * {@linkcode FileSystem workspace.fs}-api.
	 *
	 * *Note 2:* When renaming a folder with children only one event is fired.
	 */
	var onDidRenameFiles(default, null):Event<FileRenameEvent>;

	/**
	 * Get a workspace configuration object.
	 *
	 * When a section-identifier is provided only that part of the configuration
	 * is returned. Dots in the section-identifier are interpreted as child-access,
	 * like `{ myExt: { setting: { doIt: true }}}` and `getConfiguration('myExt.setting').get('doIt') === true`.
	 *
	 * When a scope is provided configuration confined to that scope is returned. Scope can be a resource or a language identifier or both.
	 *
	 * @param section A dot-separated identifier.
	 * @param scope A scope for which the configuration is asked for.
	 * @return The full configuration or a subset.
	 */
	function getConfiguration(?section:String, ?scope:Null<ConfigurationScope>):WorkspaceConfiguration;

	/**
	 * An event that is emitted when the {@link WorkspaceConfiguration configuration} changed.
	 */
	var onDidChangeConfiguration(default, null):Event<ConfigurationChangeEvent>;

	/**
	 * Register a task provider.
	 *
	 * @deprecated Use the corresponding function on the `tasks` namespace instead
	 *
	 * @param type The task kind type this provider is registered for.
	 * @param provider A task provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	@:deprecated("Use the corresponding function on the `tasks` namespace instead")
	function registerTaskProvider<T:Task>(type:String, provider:TaskProvider<T>):Disposable;

	/**
	 * Register a filesystem provider for a given scheme, e.g. `ftp`.
	 *
	 * There can only be one provider per scheme and an error is being thrown when a scheme
	 * has been claimed by another provider or when it is reserved.
	 *
	 * @param scheme The uri-{@link Uri.scheme scheme} the provider registers for.
	 * @param provider The filesystem provider.
	 * @param options Immutable metadata about the provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerFileSystemProvider(scheme:String, provider:FileSystemProvider,
		options:{var ?isCaseSensitive(default, null):Bool; var ?isReadonly(default, null):Bool;}):Disposable;

	/**
	 * When true, the user has explicitly trusted the contents of the workspace.
	 */
	var isTrusted(default, null):Bool;

	/**
	 * Event that fires when the current workspace has been trusted.
	 */
	var onDidGrantWorkspaceTrust(default, null):Event<Void>;
}

extern class VscodeDebug {
	/**
	 * The currently active {@link DebugSession debug session} or `undefined`. The active debug session is the one
	 * represented by the debug action floating window or the one currently shown in the drop down menu of the debug action floating window.
	 * If no debug session is active, the value is `undefined`.
	 */
	var activeDebugSession:Null<DebugSession>;

	/**
	 * The currently active {@link DebugConsole debug console}.
	 * If no debug session is active, output sent to the debug console is not shown.
	 */
	var activeDebugConsole:DebugConsole;

	/**
	 * List of breakpoints.
	 */
	var breakpoints:Array<Breakpoint>;

	/**
	 * An {@link Event} which fires when the {@link debug.activeDebugSession active debug session}
	 * has changed. *Note* that the event also fires when the active debug session changes
	 * to `undefined`.
	 */
	var onDidChangeActiveDebugSession(default, null):Event<Null<DebugSession>>;

	/**
	 * An {@link Event} which fires when a new {@link DebugSession debug session} has been started.
	 */
	var onDidStartDebugSession(default, null):Event<DebugSession>;

	/**
	 * An {@link Event} which fires when a custom DAP event is received from the {@link DebugSession debug session}.
	 */
	var onDidReceiveDebugSessionCustomEvent(default, null):Event<DebugSessionCustomEvent>;

	/**
	 * An {@link Event} which fires when a {@link DebugSession debug session} has terminated.
	 */
	var onDidTerminateDebugSession(default, null):Event<DebugSession>;

	/**
	 * An {@link Event} that is emitted when the set of breakpoints is added, removed, or changed.
	 */
	var onDidChangeBreakpoints(default, null):Event<BreakpointsChangeEvent>;

	/**
	 * Register a {@link DebugConfigurationProvider debug configuration provider} for a specific debug type.
	 * The optional {@link DebugConfigurationProviderTriggerKind triggerKind} can be used to specify when the `provideDebugConfigurations` method of the provider is triggered.
	 * Currently two trigger kinds are possible: with the value `Initial` (or if no trigger kind argument is given) the `provideDebugConfigurations` method is used to provide the initial debug configurations to be copied into a newly created launch.json.
	 * With the trigger kind `Dynamic` the `provideDebugConfigurations` method is used to dynamically determine debug configurations to be presented to the user (in addition to the static configurations from the launch.json).
	 * Please note that the `triggerKind` argument only applies to the `provideDebugConfigurations` method: so the `resolveDebugConfiguration` methods are not affected at all.
	 * Registering a single provider with resolve methods for different trigger kinds, results in the same resolve methods called multiple times.
	 * More than one provider can be registered for the same type.
	 *
	 * @param type The debug type for which the provider is registered.
	 * @param provider The {@link DebugConfigurationProvider debug configuration provider} to register.
	 * @param triggerKind The {@link DebugConfigurationProviderTrigger trigger} for which the 'provideDebugConfiguration' method of the provider is registered. If `triggerKind` is missing, the value `DebugConfigurationProviderTriggerKind.Initial` is assumed.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerDebugConfigurationProvider(debugType:String, provider:DebugConfigurationProvider,
		?triggerKind:DebugConfigurationProviderTriggerKind):Disposable;

	/**
	 * Register a {@link DebugAdapterDescriptorFactory debug adapter descriptor factory} for a specific debug type.
	 * An extension is only allowed to register a DebugAdapterDescriptorFactory for the debug type(s) defined by the extension. Otherwise an error is thrown.
	 * Registering more than one DebugAdapterDescriptorFactory for a debug type results in an error.
	 *
	 * @param debugType The debug type for which the factory is registered.
	 * @param factory The {@link DebugAdapterDescriptorFactory debug adapter descriptor factory} to register.
	 * @return A {@link Disposable} that unregisters this factory when being disposed.
	 */
	function registerDebugAdapterDescriptorFactory(debugType:String, factory:DebugAdapterDescriptorFactory):Disposable;

	/**
	 * Register a debug adapter tracker factory for the given debug type.
	 *
	 * @param debugType The debug type for which the factory is registered or '*' for matching all debug types.
	 * @param factory The {@link DebugAdapterTrackerFactory debug adapter tracker factory} to register.
	 * @return A {@link Disposable} that unregisters this factory when being disposed.
	 */
	function registerDebugAdapterTrackerFactory(debugType:String, factory:DebugAdapterTrackerFactory):Disposable;

	/**
	 * Start debugging by using either a named launch or named compound configuration,
	 * or by directly passing a {@link DebugConfiguration}.
	 * The named configurations are looked up in '.vscode/launch.json' found in the given folder.
	 * Before debugging starts, all unsaved files are saved and the launch configurations are brought up-to-date.
	 * Folder specific variables used in the configuration (e.g. '${workspaceFolder}') are resolved against the given folder.
	 * @param folder The {@link WorkspaceFolder workspace folder} for looking up named configurations and resolving variables or `undefined` for a non-folder setup.
	 * @param nameOrConfiguration Either the name of a debug or compound configuration or a {@link DebugConfiguration} object.
	 * @param parentSessionOrOptions Debug session options. When passed a parent {@link DebugSession debug session}, assumes options with just this parent session.
	 * @return A thenable that resolves when debugging could be successfully started.
	 */
	function startDebugging(folder:Null<WorkspaceFolder>, nameOrConfiguration:EitherType<String, DebugConfiguration>,
		?parentSessionOrOptions:EitherType<DebugSession, DebugSessionOptions>):Thenable<Bool>;

	/**
	 * Stop the given debug session or stop all debug sessions if session is omitted.
	 * @param session The {@link DebugSession debug session} to stop; if omitted all sessions are stopped.
	 */
	function stopDebugging(?session:DebugSession):Thenable<Void>;

	/**
	 * Add breakpoints.
	 * @param breakpoints The breakpoints to add.
	 */
	function addBreakpoints(breakpoints:ReadOnlyArray<Breakpoint>):Void;

	/**
	 * Remove breakpoints.
	 * @param breakpoints The breakpoints to remove.
	 */
	function removeBreakpoints(breakpoints:ReadOnlyArray<Breakpoint>):Void;

	/**
	 * Converts a "Source" descriptor object received via the Debug Adapter Protocol into a Uri that can be used to load its contents.
	 * If the source descriptor is based on a path, a file Uri is returned.
	 * If the source descriptor uses a reference number, a specific debug Uri (scheme 'debug') is constructed that requires a corresponding ContentProvider and a running debug session
	 *
	 * If the "Source" descriptor has insufficient information for creating the Uri, an error is thrown.
	 *
	 * @param source An object conforming to the [Source](https://microsoft.github.io/debug-adapter-protocol/specification#Types_Source) type defined in the Debug Adapter Protocol.
	 * @param session An optional debug session that will be used when the source descriptor uses a reference number to load the contents from an active debug session.
	 * @return A uri that can be used to load the contents of the source.
	 */
	function asDebugSourceUri(source:DebugProtocolSource, ?session:DebugSession):Uri;
}

/**
	Return value type for `VscodeLanguages.getDiagnostics`.
**/
@:dce
abstract VscodeLanguagesGetDiagnosticsReturn(Array<Dynamic>) {
	public var uri(get, never):Uri;

	inline function get_uri()
		return this[0];

	public var diagnostics(get, never):Array<Diagnostic>;

	inline function get_diagnostics()
		return this[1];
}

extern class VscodeTasks {
	/**
	 * Register a task provider.
	 *
	 * @param type The task kind type this provider is registered for.
	 * @param provider A task provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerTaskProvider<T:Task>(type:String, provider:TaskProvider<T>):Disposable;

	/**
	 * Fetches all tasks available in the systems. This includes tasks
	 * from `tasks.json` files as well as tasks from task providers
	 * contributed through extensions.
	 *
	 * @param filter Optional filter to select tasks of a certain type or version.
	 */
	function fetchTasks(?filter:TaskFilter):Thenable<Array<Task>>;

	/**
	 * Executes a task that is managed by the editor. The returned
	 * task execution can be used to terminate the task.
	 *
	 * @throws When running a ShellExecution or a ProcessExecution
	 * task in an environment where a new process cannot be started.
	 * In such an environment, only CustomExecution tasks can be run.
	 *
	 * @param task the task to execute
	 */
	function executeTask(task:Task):Thenable<TaskExecution>;

	/**
	 * The currently active task executions or an empty array.
	 */
	var taskExecutions(default, null):ReadOnlyArray<TaskExecution>;

	/**
	 * Fires when a task starts.
	 */
	var onDidStartTask(default, null):Event<TaskStartEvent>;

	/**
	 * Fires when a task ends.
	 */
	var onDidEndTask(default, null):Event<TaskEndEvent>;

	/**
	 * Fires when the underlying process has been started.
	 * This event will not fire for tasks that don't
	 * execute an underlying process.
	 */
	var onDidStartTaskProcess(default, null):Event<TaskProcessStartEvent>;

	/**
	 * Fires when the underlying process has ended.
	 * This event will not fire for tasks that don't
	 * execute an underlying process.
	 */
	var onDidEndTaskProcess(default, null):Event<TaskProcessEndEvent>;
}

extern class VscodeComments {
	/**
	 * Creates a new {@link CommentController comment controller} instance.
	 *
	 * @param id An `id` for the comment controller.
	 * @param label A human-readable string for the comment controller.
	 * @return An instance of {@link CommentController comment controller}.
	 */
	function createCommentController(id:String, label:String):CommentController;
}

extern class VscodeAuthentication {
	/**
	 * Get an authentication session matching the desired scopes. Rejects if a provider with providerId is not
	 * registered, or if the user does not consent to sharing authentication information with
	 * the extension. If there are multiple sessions with the same scopes, the user will be shown a
	 * quickpick to select which account they would like to use.
	 *
	 * Currently, there are only two authentication providers that are contributed from built in extensions
	 * to the editor that implement GitHub and Microsoft authentication: their providerId's are 'github' and 'microsoft'.
	 * @param providerId The id of the provider to use
	 * @param scopes A list of scopes representing the permissions requested. These are dependent on the authentication provider
	 * @param options The {@link GetSessionOptions} to use
	 * @returns A thenable that resolves to an authentication session
	 */
	@:overload(function(providerId:String, scopes:ReadOnlyArray<String>, ?options:AuthenticationGetSessionOptions):Thenable<Null<AuthenticationSession>> {})
	function getSession(providerId:String, scopes:ReadOnlyArray<String>,
		options:AuthenticationGetSessionOptions & {createIfNone:Bool}):Thenable<AuthenticationSession>;

	/**
	 * An {@link Event} which fires when the authentication sessions of an authentication provider have
	 * been added, removed, or changed.
	 */
	var onDidChangeSessions(default, null):Event<AuthenticationSessionsChangeEvent>;

	/**
	 * Register an authentication provider.
	 *
	 * There can only be one provider per id and an error is being thrown when an id
	 * has already been used by another provider. Ids are case-sensitive.
	 *
	 * @param id The unique identifier of the provider.
	 * @param label The human-readable name of the provider.
	 * @param provider The authentication provider provider.
	 * @params options Additional options for the provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerAuthenticationProvider(id:String, label:String, provider:AuthenticationProvider, ?options:AuthenticationProviderOptions):Disposable;
}

extern class VscodeNotebooks {
	/**
	 * Creates a new notebook controller.
	 *
	 * @param id Identifier of the controller. Must be unique per extension.
	 * @param notebookType A notebook type for which this controller is for.
	 * @param label The label of the controller.
	 * @param handler The execute-handler of the controller.
	 */
	function createNotebookController(id:String, notebookType:String, label:String,
		?handler:(cells:Array<NotebookCell>, notebook:NotebookDocument, controller:NotebookController) -> Thenable<Void>):NotebookController;

	/**
	 * Register a {@link NotebookCellStatusBarItemProvider cell statusbar item provider} for the given notebook type.
	 *
	 * @param notebookType The notebook type to register for.
	 * @param provider A cell status bar provider.
	 * @return A {@link Disposable} that unregisters this provider when being disposed.
	 */
	function registerNotebookCellStatusBarItemProvider(notebookType:String, provider:NotebookCellStatusBarItemProvider):Disposable;

	/**
	 * Creates a new messaging instance used to communicate with a specific renderer.
	 *
	 * * *Note 1:* Extensions can only create renderer that they have defined in their `package.json`-file
	 * * *Note 2:* A renderer only has access to messaging if `requiresMessaging` is set to `always` or `optional` in
	 * its `notebookRenderer` contribution.
	 *
	 * @param rendererId The renderer ID to communicate with
	 * @returns A new notebook renderer messaging object.
	 */
	function createRendererMessaging(rendererId:String):NotebookRendererMessaging;
}

extern class VscodeTests {
	/**
	 * Creates a new test controller.
	 *
	 * @param id Identifier for the controller, must be globally unique.
	 * @param label A human-readable label for the controller.
	 * @returns An instance of the {@link TestController}.
	 */
	function createTestController(id:String, label:String):TestController;
}
