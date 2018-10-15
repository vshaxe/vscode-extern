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
	 * Commands can be added to the editor using the [registerCommand](#commands.registerCommand)
	 * and [registerTextEditorCommand](#commands.registerTextEditorCommand) functions. Commands
	 * can be executed [manually](#commands.executeCommand) or from a UI gesture. Those are:
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
	 * Namespace for dealing with the current workspace. A workspace is the representation
	 * of the folder that has been opened. There is no workspace when just a file but not a
	 * folder has been opened.
	 *
	 * The workspace offers support for [listening](#workspace.createFileSystemWatcher) to fs
	 * events and for [finding](#workspace.findFiles) files. Both perform well and run _outside_
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
	 * that can be called with a [TextDocument](#TextDocument) and a [Position](#Position) returning hover info. The rest, like tracking the
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
	 * Registration is done using a [document selector](#DocumentSelector) which is either a language id, like `javascript` or
	 * a more complex [filter](#DocumentFilter) like `{ language: 'typescript', scheme: 'file' }`. Matching a document against such
	 * a selector will result in a [score](#languages.match) that is used to determine if and how a provider shall be used. When
	 * scores are equal the provider that came last wins. For features that allow full arity, like [hover](#languages.registerHoverProvider),
	 * the score is only checked to be `>0`, for other features, like [IntelliSense](#languages.registerCompletionItemProvider) the
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
	 * by an [extension](#Extension)-interface which enables reflection on them.
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
	 *
	 * When depending on the API of another extension add an `extensionDependency`-entry
	 * to `package.json`, and use the [getExtension](#extensions.getExtension)-function
	 * and the [exports](#Extension.exports)-property, like below:
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
}

extern class VscodeEnv {
	/**
	 * The application name of the editor, like 'VS Code'.
	 *
	 * @readonly
	 */
	var appName(default, null):String;

	/**
	 * The application root folder from which the editor is running.
	 *
	 * @readonly
	 */
	var appRoot(default, null):String;

	/**
	 * Represents the preferred user-language, like `de-CH`, `fr`, or `en-US`.
	 *
	 * @readonly
	 */
	var language(default, null):String;

	/**
	 * A unique identifier for the computer.
	 *
	 * @readonly
	 */
	var machineId(default, null):String;

	/**
	 * A unique identifier for the current session.
	 * Changes each time the editor is started.
	 *
	 * @readonly
	 */
	var sessionId(default, null):String;
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
	 * Text editor commands are different from ordinary [commands](#commands.registerCommand) as
	 * they only execute when there is an active editor when the command is called. Also, the
	 * command handler of an editor command has access to the active editor and to an
	 * [edit](#TextEditorEdit)-builder.
	 *
	 * @param command A unique identifier for the command.
	 * @param callback A command handler function with access to an [editor](#TextEditor) and an [edit](#TextEditorEdit).
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
	 * `number`, `undefined`, and `null`, as well as [`Position`](#Position), [`Range`](#Range), [`Uri`](#Uri) and [`Location`](#Location).
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
	 * Retrieve the list of all available commands. Commands starting an underscore are
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
	 * An [event](#Event) which fires when the [active editor](#window.activeTextEditor)
	 * has changed. *Note* that the event also fires when the active editor changes
	 * to `undefined`.
	 */
	var onDidChangeActiveTextEditor(default, null):Event<Null<TextEditor>>;

	/**
	 * An [event](#Event) which fires when the array of [visible editors](#window.visibleTextEditors)
	 * has changed.
	 */
	var onDidChangeVisibleTextEditors(default, null):Event<Array<TextEditor>>;

	/**
	 * An [event](#Event) which fires when the selection in an editor has changed.
	 */
	var onDidChangeTextEditorSelection(default, null):Event<TextEditorSelectionChangeEvent>;

	/**
	 * An [event](#Event) which fires when the visible ranges of an editor has changed.
	 */
	var onDidChangeTextEditorVisibleRanges(default, null):Event<TextEditorVisibleRangesChangeEvent>;

	/**
	 * An [event](#Event) which fires when the options of an editor have changed.
	 */
	var onDidChangeTextEditorOptions(default, null):Event<TextEditorOptionsChangeEvent>;

	/**
	 * An [event](#Event) which fires when the view column of an editor has changed.
	 */
	var onDidChangeTextEditorViewColumn(default, null):Event<TextEditorViewColumnChangeEvent>;

	/**
	 * The currently opened terminals or an empty array.
	 */
	var terminals(default, null):ReadonlyArray<Terminal>;

	/**
	 * An [event](#Event) which fires when a terminal has been created, either through the
	 * [createTerminal](#window.createTerminal) API or commands.
	 */
	var onDidOpenTerminal(default, null):Event<Terminal>;

	/**
	 * An [event](#Event) which fires when a terminal is disposed.
	 */
	var onDidCloseTerminal(default, null):Event<Terminal>;

	/**
	 * Represents the current window's state.
	 *
	 * @readonly
	 */
	var state(default, null):WindowState;

	/**
	 * An [event](#Event) which fires when the focus state of the current window
	 * changes. The value of the event represents whether the window is focused.
	 */
	var onDidChangeWindowState(default, null):Event<WindowState>;

	/**
	 * Show the given document in a text editor. A [column](#ViewColumn) can be provided
	 * to control where the editor is being shown. Might change the [active editor](#window.activeTextEditor).
	 *
	 * @param document A text document to be shown.
	 * @param column A view column in which the [editor](#TextEditor) should be shown. The default is the [active](#ViewColumn.Active), other values
	 * are adjusted to be `Min(column, columnCount + 1)`, the [active](#ViewColumn.Active)-column is not adjusted. Use [`ViewColumn.Beside`](#ViewColumn.Beside)
	 * to open the editor to the side of the currently active one.
	 * @param preserveFocus When `true` the editor will not take focus.
	 * @return A promise that resolves to an [editor](#TextEditor).
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
	 * @see [showInformationMessage](#window.showInformationMessage)
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
	 * @see [showInformationMessage](#window.showInformationMessage)
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
	 * @see [showInformationMessage](#window.showInformationMessage)
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
	@:overload(function(items:EitherType<Array<String>, Thenable<Array<String>>>, ?options:QuickPickOptions, ?token:CancellationToken):Thenable<Null<String>> {})
	function showQuickPick<T:QuickPickItem>(items:EitherType<Array<T>, Thenable<Array<T>>>, ?options:QuickPickOptions,
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
	@:extern inline function showQuickPickMany<T:QuickPickItem>(items:EitherType<Array<T>, Thenable<Array<T>>>, ?options:QuickPickOptions,
			?token:CancellationToken):Thenable<Null<Array<T>>> {
		if (options == null)
			options = {canPickMany: true};
		else
			options.canPickMany = true;
		return cast showQuickPick(items, options, if (token == null) js.Lib.undefined else token);
	}

	/**
	 * Shows a selection list of [workspace folders](#workspace.workspaceFolders) to pick from.
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
	function showOpenDialog(options:OpenDialogOptions):Thenable<Null<Array<Uri>>>;

	/**
	 * Shows a file save dialog to the user which allows to select a file
	 * for saving-purposes.
	 *
	 * @param options Options that control the dialog.
	 * @returns A promise that resolves to the selected resource or `undefined`.
	 */
	function showSaveDialog(options:SaveDialogOptions):Thenable<Null<Uri>>;

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
	 * Creates a [QuickPick](#QuickPick) to let the user pick an item from a list
	 * of items of type T.
	 *
	 * Note that in many cases the more convenient [window.showQuickPick](#window.showQuickPick)
	 * is easier to use. [window.createQuickPick](#window.createQuickPick) should be used
	 * when [window.showQuickPick](#window.showQuickPick) does not offer the required flexibility.
	 *
	 * @return A new [QuickPick](#QuickPick).
	 */
	function createQuickPick<T:QuickPickItem>():QuickPick<T>;

	/**
	 * Creates a [InputBox](#InputBox) to let the user enter some text input.
	 *
	 * Note that in many cases the more convenient [window.showInputBox](#window.showInputBox)
	 * is easier to use. [window.createInputBox](#window.createInputBox) should be used
	 * when [window.showInputBox](#window.showInputBox) does not offer the required flexibility.
	 *
	 * @return A new [InputBox](#InputBox).
	 */
	function createInputBox():InputBox;

	/**
	 * Creates a new [output channel](#OutputChannel) with the given name.
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
		?options:{
			> WebviewPanelOptions, > WebviewOptions,
		}):WebviewPanel;

	/**
	 * Set a message to the status bar. This is a short hand for the more powerful
	 * status bar [items](#window.createStatusBarItem).
	 *
	 * *Note* that status bar messages without hide arguments stack and that they must be disposed when no
	 * longer used.
	 *
	 * @param text The message to show, supports icon substitution as in status bar [items](#StatusBarItem.text).
	 * @param hideAfterTimeout Timeout in milliseconds after which the message will be disposed.
	 * @param hideWhenDone Thenable on which completion (resolve or reject) the message will be disposed.
	 * @return A disposable which hides the status bar message.
	 */
	@:overload(function(text:String, hideAfterTimeout:Float):Disposable {})
	@:overload(function(text:String, hideWhenDone:Thenable<Any>):Disposable {})
	function setStatusBarMessage(text:String):Disposable;

	/**
	 * ~~Show progress in the Source Control viewlet while running the given callback and while
	 * its returned promise isn't resolve or rejected.~~
	 *
	 * @deprecated Use `withProgress` instead.
	 *
	 * @param task A callback returning a promise. Progress increments can be reported with
	 * the provided [progress](#Progress)-object.
	 * @return The thenable the task did return.
	 */
	@:deprecated("Use `withProgress` instead.")
	function withScmProgress<R>(task:Progress<Float>->Thenable<R>):Thenable<R>;

	/**
	 * Show progress in the editor. Progress is shown while running the given callback
	 * and while the promise it returned isn't resolved nor rejected. The location at which
	 * progress should show (and other details) is defined via the passed [`ProgressOptions`](#ProgressOptions).
	 *
	 * @param task A callback returning a promise. Progress state can be reported with
	 * the provided [progress](#Progress)-object.
	 *
	 * To report discrete progress, use `increment` to indicate how much work has been completed. Each call with
	 * a `increment` value will be summed up and reflected as overall progress until 100% is reached (a value of
	 * e.g. `10` accounts for `10%` of work done).
	 * Note that currently only `ProgressLocation.Notification` is capable of showing discrete progress.
	 *
	 * To monitor if the operation has been cancelled by the user, use the provided [`CancellationToken`](#CancellationToken).
	 * Note that currently only `ProgressLocation.Notification` is supporting to show a cancel button to cancel the
	 * long running operation.
	 * @return The thenable the task-callback returned.
	 */
	function withProgress<R>(options:ProgressOptions, task:Progress<{?message:String, ?increment:Float}>->CancellationToken->Thenable<R>):Thenable<R>;

	/**
	 * Creates a status bar [item](#StatusBarItem).
	 *
	 * @param alignment The alignment of the item.
	 * @param priority The priority of the item. Higher values mean the item should be shown more to the left.
	 * @return A new status bar item.
	 */
	function createStatusBarItem(?alignment:StatusBarAlignment, ?priority:Float):StatusBarItem;

	/**
	 * Creates a [Terminal](#Terminal). The cwd of the terminal will be the workspace directory
	 * if it exists, regardless of whether an explicit customStartPath setting exists.
	 *
	 * @param name Optional human-readable string which will be used to represent the terminal in the UI.
	 * @param shellPath Optional path to a custom shell executable to be used in the terminal.
	 * @param shellArgs Optional args for the custom shell executable, this does not work on Windows (see #8429)
	 * @param options A TerminalOptions object describing the characteristics of the new terminal.
	 * @return A new Terminal.
	 */
	@:overload(function(options:TerminalOptions):Terminal {})
	function createTerminal(?name:String, ?shellPath:String, ?shellArgs:Array<String>):Terminal;

	/**
	 * Register a [TreeDataProvider](#TreeDataProvider) for the view contributed using the extension point `views`.
	 * This will allow you to contribute data to the [TreeView](#TreeView) and update if the data changes.
	 *
	 * **Note:** To get access to the [TreeView](#TreeView) and perform operations on it, use [createTreeView](#window.createTreeView).
	 *
	 * @param viewId Id of the view contributed using the extension point `views`.
	 * @param treeDataProvider A [TreeDataProvider](#TreeDataProvider) that provides tree data for the view
	 */
	function registerTreeDataProvider<T>(viewId:String, treeDataProvider:TreeDataProvider<T>):Disposable;

	/**
	 * Create a [TreeView](#TreeView) for the view contributed using the extension point `views`.
	 * @param viewId Id of the view contributed using the extension point `views`.
	 * @param options Options object to provide [TreeDataProvider](#TreeDataProvider) for the view.
	 * @returns a [TreeView](#TreeView).
	 */
	function createTreeView<T>(viewId:String, options:{treeDataProvider:TreeDataProvider<T>}):TreeView<T>;

	/**
	 * Registers a [uri handler](#UriHandler) capable of handling system-wide [uris](#Uri).
	 * In case there are multiple windows open, the topmost window will handle the uri.
	 * A uri handler is scoped to the extension it is contributed from; it will only
	 * be able to handle uris which are directed to the extension itself. A uri must respect
	 * the following rules:
	 *
	 * - The uri-scheme must be the product name;
	 * - The uri-authority must be the extension id (eg. `my.extension`);
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
	 * make sure that [registerWebviewPanelSerializer](#registerWebviewPanelSerializer) is called during activation.
	 *
	 * Only a single serializer may be registered at a time for a given `viewType`.
	 *
	 * @param viewType Type of the webview panel that can be serialized.
	 * @param serializer Webview serializer.
	 */
	function registerWebviewPanelSerializer(viewType:String, serializer:WebviewPanelSerializer):Disposable;
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
	var all(default, null):Array<Extension<Any>>;
}

extern class VscodeScm {
	/**
	 * ~~The [input box](#SourceControlInputBox) for the last source control
	 * created by the extension.~~
	 *
	 * @deprecated Use SourceControl.inputBox instead
	 */
	@:deprecated("Use SourceControl.inputBox instead")
	var inputBox(default, null):SourceControlInputBox;

	/**
	 * Creates a new [source control](#SourceControl) instance.
	 *
	 * @param id An `id` for the source control. Something short, eg: `git`.
	 * @param label A human-readable string for the source control. Eg: `Git`.
	 * @param rootUri An optional Uri of the root of the source control. Eg: `Uri.parse(workspaceRoot)`.
	 * @return An instance of [source control](#SourceControl).
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
	 * Set (and change) the [language](#TextDocument.languageId) that is associated
	 * with the given document.
	 *
	 * *Note* that calling this function will trigger the [`onDidCloseTextDocument`](#workspace.onDidCloseTextDocument) event
	 * followed by the [`onDidOpenTextDocument`](#workspace.onDidOpenTextDocument) event.
	 *
	 * @param document The document which language is to be changed
	 * @param languageId The new language identifier.
	 * @returns A thenable that resolves with the updated document.
	 */
	function setTextDocumentLanguage(document:TextDocument, languageId:String):Thenable<TextDocument>;

	/**
	 * Compute the match between a document [selector](#DocumentSelector) and a document. Values
	 * greater than zero mean the selector matches the document.
	 *
	 * A match is computed according to these rules:
	 * 1. When [`DocumentSelector`](#DocumentSelector) is an array, compute the match for each contained `DocumentFilter` or language identifier and take the maximum value.
	 * 2. A string will be desugared to become the `language`-part of a [`DocumentFilter`](#DocumentFilter), so `"fooLang"` is like `{ language: "fooLang" }`.
	 * 3. A [`DocumentFilter`](#DocumentFilter) will be matched against the document by comparing its parts with the document. The following rules apply:
	 *  1. When the `DocumentFilter` is empty (`{}`) the result is `0`
	 *  2. When `scheme`, `language`, or `pattern` are defined but one doesn't match, the result is `0`
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
	 * An [event](#Event) which fires when the global set of diagnostics changes. This is
	 * newly added and removed diagnostics.
	 */
	var onDidChangeDiagnostics(default, never):Event<DiagnosticChangeEvent>;

	/**
	 * Get all diagnostics for a given resource. *Note* that this includes diagnostics from
	 * all extensions but *not yet* from the task framework.
	 *
	 * @param resource A resource
	 * @returns An array of [diagnostics](#Diagnostic) objects or an empty array.
	 *
	 * OR
	 *
	 * Get all diagnostics. *Note* that this includes diagnostics from
	 * all extensions but *not yet* from the task framework.
	 *
	 * @returns An array of uri-diagnostics tuples or an empty array.
	 *
	 */
	@:overload(function(resource:Uri):Array<Diagnostic> {})
	function getDiagnostics():Array<VscodeLanguagesGetDiagnosticsReturn>;

	/**
	 * Create a diagnostics collection.
	 *
	 * @param name The [name](#DiagnosticCollection.name) of the collection.
	 * @return A new diagnostic collection.
	 */
	function createDiagnosticCollection(?name:String):DiagnosticCollection;

	/**
	 * Register a completion provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their [score](#languages.match) and groups of equal score are sequentially asked for
	 * completion items. The process stops when one or many providers of a group return a
	 * result. A failing provider (rejected promise or exception) will not fail the whole
	 * operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A completion provider.
	 * @param triggerCharacters Trigger completion when the user types one of the characters, like `.` or `:`.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerCompletionItemProvider(selector:DocumentSelector, provider:CompletionItemProvider, triggerCharacters:Rest<String>):Disposable;

	/**
	 * Register a code action provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A code action provider.
	 * @param metadata Metadata about the kind of code actions the provider providers.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerCodeActionsProvider(selector:DocumentSelector, provider:CodeActionProvider, ?metadata:CodeActionProviderMetadata):Disposable;

	/**
	 * Register a code lens provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A code lens provider.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerCodeLensProvider(selector:DocumentSelector, provider:CodeLensProvider):Disposable;

	/**
	 * Register a definition provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A definition provider.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
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
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
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
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerTypeDefinitionProvider(selector:DocumentSelector, provider:TypeDefinitionProvider):Disposable;

	/**
	 * Register a hover provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A hover provider.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerHoverProvider(selector:DocumentSelector, provider:HoverProvider):Disposable;

	/**
	 * Register a document highlight provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their [score](#languages.match) and groups sequentially asked for document highlights.
	 * The process stops when a provider returns a `non-falsy` or `non-failure` result.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A document highlight provider.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
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
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerDocumentSymbolProvider(selector:DocumentSelector, provider:DocumentSymbolProvider):Disposable;

	/**
	 * Register a workspace symbol provider.
	 *
	 * Multiple providers can be registered. In that case providers are asked in parallel and
	 * the results are merged. A failing provider (rejected promise or exception) will not cause
	 * a failure of the whole operation.
	 *
	 * @param provider A workspace symbol provider.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerWorkspaceSymbolProvider(provider:WorkspaceSymbolProvider):Disposable;

	/**
	 * Register a reference provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A reference provider.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerReferenceProvider(selector:DocumentSelector, provider:ReferenceProvider):Disposable;

	/**
	 * Register a rename provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their [score](#languages.match) and the best-matching provider is used. Failure
	 * of the selected provider will cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A rename provider.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerRenameProvider(selector:DocumentSelector, provider:RenameProvider):Disposable;

	/**
	 * Register a formatting provider for a document.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their [score](#languages.match) and the best-matching provider is used. Failure
	 * of the selected provider will cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A document formatting edit provider.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerDocumentFormattingEditProvider(selector:DocumentSelector, provider:DocumentFormattingEditProvider):Disposable;

	/**
	 * Register a formatting provider for a document range.
	 *
	 * *Note:* A document range provider is also a [document formatter](#DocumentFormattingEditProvider)
	 * which means there is no need to [register](registerDocumentFormattingEditProvider) a document
	 * formatter when also registering a range provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their [score](#languages.match) and the best-matching provider is used. Failure
	 * of the selected provider will cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A document range formatting edit provider.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerDocumentRangeFormattingEditProvider(selector:DocumentSelector, provider:DocumentRangeFormattingEditProvider):Disposable;

	/**
	 * Register a formatting provider that works on type. The provider is active when the user enables the setting `editor.formatOnType`.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their [score](#languages.match) and the best-matching provider is used. Failure
	 * of the selected provider will cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider An on type formatting edit provider.
	 * @param firstTriggerCharacter A character on which formatting should be triggered, like `}`.
	 * @param moreTriggerCharacter More trigger characters.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerOnTypeFormattingEditProvider(selector:DocumentSelector, provider:OnTypeFormattingEditProvider, firstTriggerCharacter:String,
		moreTriggerCharacter:haxe.extern.Rest<String>):Disposable;

	/**
	 * Register a signature help provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are sorted
	 * by their [score](#languages.match) and called sequentially until a provider returns a
	 * valid result.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A signature help provider.
	 * @param triggerCharacters Trigger signature help when the user types one of the characters, like `,` or `(`.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerSignatureHelpProvider(selector:DocumentSelector, provider:SignatureHelpProvider, triggerCharacters:haxe.extern.Rest<String>):Disposable;

	/**
	 * Register a document link provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A document link provider.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerDocumentLinkProvider(selector:DocumentSelector, provider:DocumentLinkProvider):Disposable;

	/**
	 * Register a color provider.
	 *
	 * Multiple providers can be registered for a language. In that case providers are asked in
	 * parallel and the results are merged. A failing provider (rejected promise or exception) will
	 * not cause a failure of the whole operation.
	 *
	 * @param selector A selector that defines the documents this provider is applicable to.
	 * @param provider A color provider.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
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
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerFoldingRangeProvider(selector:DocumentSelector, provider:FoldingRangeProvider):Disposable;

	/**
	 * Set a [language configuration](#LanguageConfiguration) for a language.
	 *
	 * @param language A language identifier like `typescript`.
	 * @param configuration Language configuration.
	 * @return A [disposable](#Disposable) that unsets this configuration.
	 */
	function setLanguageConfiguration(language:String, configuration:LanguageConfiguration):Disposable;
}

extern class VscodeWorkspace {
	/**
	 * ~~The folder that is open in the editor. `undefined` when no folder
	 * has been opened.~~
	 *
	 * @deprecated Use [`workspaceFolders`](#workspace.workspaceFolders) instead.
	 */
	@:deprecated("Use [`workspaceFolders`](#workspace.workspaceFolders) instead.")
	var rootPath(default, null):Null<String>;

	/**
	 * List of workspace folders or `undefined` when no folder is open.
	 * *Note* that the first entry corresponds to the value of `rootPath`.
	 */
	var workspaceFolders(default, null):Null<Array<WorkspaceFolder>>;

	/**
	 * The name of the workspace. `undefined` when no folder
	 * has been opened.
	 */
	var name(default, null):Null<String>;

	/**
	 * An event that is emitted when a workspace folder is added or removed.
	 */
	var onDidChangeWorkspaceFolders(default, null):Event<WorkspaceFoldersChangeEvent>;

	/**
	 * Returns the [workspace folder](#WorkspaceFolder) that contains a given uri.
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
	 * When there are no [workspace folders](#workspace.workspaceFolders) or when the path
	 * is not contained in them, the input is returned.
	 *
	 * @param pathOrUri A path or uri. When a uri is given its [fsPath](#Uri.fsPath) is used.
	 * @param includeWorkspaceFolder When `true` and when the given path is contained inside a
	 * workspace folder the name of the workspace is prepended. Defaults to `true` when there are
	 * multiple workspace folders and `false` otherwise.
	 * @return A path relative to the root or the input.
	 */
	function asRelativePath(pathOrUri:EitherType<String, Uri>, ?includeWorkspaceFolder:Bool):String;

	/**
	 * This method replaces `deleteCount` [workspace folders](#workspace.workspaceFolders) starting at index `start`
	 * by an optional set of `workspaceFoldersToAdd` on the `vscode.workspace.workspaceFolders` array. This "splice"
	 * behavior can be used to add, remove and change workspace folders in a single operation.
	 *
	 * If the first workspace folder is added, removed or changed, the currently executing extensions (including the
	 * one that called this method) will be terminated and restarted so that the (deprecated) `rootPath` property is
	 * updated to point to the first workspace folder.
	 *
	 * Use the [`onDidChangeWorkspaceFolders()`](#onDidChangeWorkspaceFolders) event to get notified when the
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
	 * **Note:** it is not valid to call [updateWorkspaceFolders()](#updateWorkspaceFolders) multiple times
	 * without waiting for the [`onDidChangeWorkspaceFolders()`](#onDidChangeWorkspaceFolders) to fire.
	 *
	 * @param start the zero-based location in the list of currently opened [workspace folders](#WorkspaceFolder)
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
	 * *Note* that only files within the current [workspace folders](#workspace.workspaceFolders) can be watched.
	 *
	 * @param globPattern A [glob pattern](#GlobPattern) that is applied to the absolute paths of created, changed,
	 * and deleted files. Use a [relative pattern](#RelativePattern) to limit events to a certain [workspace folder](#WorkspaceFolder).
	 * @param ignoreCreateEvents Ignore when files have been created.
	 * @param ignoreChangeEvents Ignore when files have been changed.
	 * @param ignoreDeleteEvents Ignore when files have been deleted.
	 * @return A new file system watcher instance.
	 */
	function createFileSystemWatcher(globPattern:GlobPattern, ?ignoreCreateEvents:Bool, ?ignoreChangeEvents:Bool, ?ignoreDeleteEvents:Bool):FileSystemWatcher;

	/**
	 * Find files across all [workspace folders](#workspace.workspaceFolders) in the workspace.
	 *
	 * @sample `findFiles('**​/*.js', '**​/node_modules/**', 10)`
	 * @param include A [glob pattern](#GlobPattern) that defines the files to search for. The glob pattern
	 * will be matched against the file paths of resulting matches relative to their workspace. Use a [relative pattern](#RelativePattern)
	 * to restrict the search results to a [workspace folder](#WorkspaceFolder).
	 * @param exclude  A [glob pattern](#GlobPattern) that defines files and folders to exclude. The glob pattern
	 * will be matched against the file paths of resulting matches relative to their workspace. When `undefined` only default excludes will
	 * apply, when `null` no excludes will apply.
	 * @param maxResults An upper-bound for the result.
	 * @param token A token that can be used to signal cancellation to the underlying search engine.
	 * @return A thenable that resolves to an array of resource identifiers. Will return no results if no
	 * [workspace folders](#workspace.workspaceFolders) are opened.
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
	 * [workspace edit](#WorkspaceEdit).
	 *
	 * All changes of a workspace edit are applied in the same order in which they have been added. If
	 * multiple textual inserts are made at the same position, these strings appear in the resulting text
	 * in the order the 'inserts' were made. Invalid sequences like 'delete file a' -> 'insert text in file a'
	 * cause failure of the operation.
	 *
	 * When applying a workspace edit that consists only of text edits an 'all-or-nothing'-strategy is used.
	 * A workspace edit with resource creations or deletions aborts the operation, e.g. consective edits will
	 * not be attempted, when a single edit fails.
	 *
	 * @param edit A workspace edit.
	 * @return A thenable that resolves when the edit could be applied.
	 */
	function applyEdit(edit:WorkspaceEdit):Thenable<Bool>;

	/**
	 * All text documents currently known to the system.
	 *
	 * @readonly
	 */
	var textDocuments(default, null):Array<TextDocument>;

	/**
	 * Opens a document. Will return early if this document is already open. Otherwise
	 * the document is loaded and the [didOpen](#workspace.onDidOpenTextDocument)-event fires.
	 *
	 * The document is denoted by an [uri](#Uri). Depending on the [scheme](#Uri.scheme) the
	 * following rules apply:
	 * * `file`-scheme: Open a file on disk, will be rejected if the file does not exist or cannot be loaded.
	 * * `untitled`-scheme: A new file that should be saved on disk, e.g. `untitled:c:\frodo\new.js`. The language
	 * will be derived from the file name.
	 * * For all other schemes the registered text document content [providers](#TextDocumentContentProvider) are consulted.
	 *
	 * *Note* that the lifecycle of the returned document is owned by the editor and not by the extension. That means an
	 * [`onDidClose`](#workspace.onDidCloseTextDocument)-event can occur at any time after opening it.
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
	 * @return A promise that resolves to a [document](#TextDocument).
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
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerTextDocumentContentProvider(scheme:String, provider:TextDocumentContentProvider):Disposable;

	/**
	 * An event that is emitted when a [text document](#TextDocument) is opened or when the  language id
	 * of a text document [has been changed](#languages.setTextDocumentLanguage).
	 *
	 * To add an event listener when a visible text document is opened, use the [TextEditor](#TextEditor) events in the
	 * [window](#window) namespace. Note that:
	 *
	 * - The event is emitted before the [document](#TextDocument) is updated in the
	 * [active text editor](#window.activeTextEditor)
	 * - When a [text document](#TextDocument) is already open (e.g.: open in another [visible text editor](#window.visibleTextEditors)) this event is not emitted
	 *
	 */
	var onDidOpenTextDocument(default, null):Event<TextDocument>;

	/**
	 * An event that is emitted when a [text document](#TextDocument) is disposed or when the language id
	 * of a text document [has been changed](#languages.setTextDocumentLanguage).
	 *
	 * To add an event listener when a visible text document is closed, use the [TextEditor](#TextEditor) events in the
	 * [window](#window) namespace. Note that this event is not emitted when a [TextEditor](#TextEditor) is closed
	 * but the document remains open in another [visible text editor](#window.visibleTextEditors).
	 */
	var onDidCloseTextDocument(default, null):Event<TextDocument>;

	/**
	 * An event that is emitted when a [text document](#TextDocument) is changed. This usually happens
	 * when the [contents](#TextDocument.getText) changes but also when other things like the
	 * [dirty](#TextDocument.isDirty)-state changes.
	 */
	var onDidChangeTextDocument(default, null):Event<TextDocumentChangeEvent>;

	/**
	 * An event that is emitted when a [text document](#TextDocument) will be saved to disk.
	 *
	 * *Note 1:* Subscribers can delay saving by registering asynchronous work. For the sake of data integrity the editor
	 * might save without firing this event. For instance when shutting down with dirty files.
	 *
	 * *Note 2:* Subscribers are called sequentially and they can [delay](#TextDocumentWillSaveEvent.waitUntil) saving
	 * by registering asynchronous work. Protection against misbehaving listeners is implemented as such:
	 *  * there is an overall time budget that all listeners share and if that is exhausted no further listener is called
	 *  * listeners that take a long time or produce errors frequently will not be called anymore
	 *
	 * The current thresholds are 1.5 seconds as overall time budget and a listener can misbehave 3 times before being ignored.
	 */
	var onWillSaveTextDocument(default, null):Event<TextDocumentWillSaveEvent>;

	/**
	 * An event that is emitted when a [text document](#TextDocument) is saved to disk.
	 */
	var onDidSaveTextDocument(default, null):Event<TextDocument>;

	/**
	 * Get a workspace configuration object.
	 *
	 * When a section-identifier is provided only that part of the configuration
	 * is returned. Dots in the section-identifier are interpreted as child-access,
	 * like `{ myExt: { setting: { doIt: true }}}` and `getConfiguration('myExt.setting').get('doIt') === true`.
	 *
	 * When a resource is provided, configuration scoped to that resource is returned.
	 *
	 * @param section A dot-separated identifier.
	 * @param resource A resource for which the configuration is asked for
	 * @return The full configuration or a subset.
	 */
	function getConfiguration(?section:String, ?resource:Null<Uri>):WorkspaceConfiguration;

	/**
	 * An event that is emitted when the [configuration](#WorkspaceConfiguration) changed.
	 */
	var onDidChangeConfiguration(default, null):Event<ConfigurationChangeEvent>;

	/**
	 * ~~Register a task provider.~~
	 *
	 * @deprecated Use the corresponding function on the `tasks` namespace instead
	 *
	 * @param type The task kind type this provider is registered for.
	 * @param provider A task provider.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	@:deprecated("Use the corresponding function on the `tasks` namespace instead")
	function registerTaskProvider(type:String, provider:TaskProvider):Disposable;

	/**
	 * Register a filesystem provider for a given scheme, e.g. `ftp`.
	 *
	 * There can only be one provider per scheme and an error is being thrown when a scheme
	 * has been claimed by another provider or when it is reserved.
	 *
	 * @param scheme The uri-[scheme](#Uri.scheme) the provider registers for.
	 * @param provider The filesystem provider.
	 * @param options Immutable metadata about the provider.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerFileSystemProvider(scheme:String, provider:FileSystemProvider, options:{?isCaseSensitive:Bool, ?isReadonly:Bool}):Disposable;
}

extern class VscodeDebug {
	/**
	 * The currently active [debug session](#DebugSession) or `undefined`. The active debug session is the one
	 * represented by the debug action floating window or the one currently shown in the drop down menu of the debug action floating window.
	 * If no debug session is active, the value is `undefined`.
	 */
	var activeDebugSession:Null<DebugSession>;

	/**
	 * The currently active [debug console](#DebugConsole).
	 */
	var activeDebugConsole:DebugConsole;

	/**
	 * List of breakpoints.
	 */
	var breakpoints:Array<Breakpoint>;

	/**
	 * An [event](#Event) which fires when the [active debug session](#debug.activeDebugSession)
	 * has changed. *Note* that the event also fires when the active debug session changes
	 * to `undefined`.
	 */
	var onDidChangeActiveDebugSession(default, null):Event<Null<DebugSession>>;

	/**
	 * An [event](#Event) which fires when a new [debug session](#DebugSession) has been started.
	 */
	var onDidStartDebugSession(default, null):Event<DebugSession>;

	/**
	 * An [event](#Event) which fires when a custom DAP event is received from the [debug session](#DebugSession).
	 */
	var onDidReceiveDebugSessionCustomEvent(default, null):Event<DebugSessionCustomEvent>;

	/**
	 * An [event](#Event) which fires when a [debug session](#DebugSession) has terminated.
	 */
	var onDidTerminateDebugSession(default, null):Event<DebugSession>;

	/**
	 * An [event](#Event) that is emitted when the set of breakpoints is added, removed, or changed.
	 */
	var onDidChangeBreakpoints(default, null):Event<BreakpointsChangeEvent>;

	/**
	 * Register a [debug configuration provider](#DebugConfigurationProvider) for a specific debug type.
	 * More than one provider can be registered for the same type.
	 *
	 * @param type The debug type for which the provider is registered.
	 * @param provider The [debug configuration provider](#DebugConfigurationProvider) to register.
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerDebugConfigurationProvider(debugType:String, provider:DebugConfigurationProvider):Disposable;

	/**
	 * Start debugging by using either a named launch or named compound configuration,
	 * or by directly passing a [DebugConfiguration](#DebugConfiguration).
	 * The named configurations are looked up in '.vscode/launch.json' found in the given folder.
	 * Before debugging starts, all unsaved files are saved and the launch configurations are brought up-to-date.
	 * Folder specific variables used in the configuration (e.g. '${workspaceFolder}') are resolved against the given folder.
	 * @param folder The [workspace folder](#WorkspaceFolder) for looking up named configurations and resolving variables or `undefined` for a non-folder setup.
	 * @param nameOrConfiguration Either the name of a debug or compound configuration or a [DebugConfiguration](#DebugConfiguration) object.
	 * @return A thenable that resolves when debugging could be successfully started.
	 */
	function startDebugging(folder:Null<WorkspaceFolder>, nameOrConfiguration:EitherType<String, DebugConfiguration>):Thenable<Bool>;

	/**
	 * Add breakpoints.
	 * @param breakpoints The breakpoints to add.
	 */
	function addBreakpoints(breakpoints:Array<Breakpoint>):Void;

	/**
	 * Remove breakpoints.
	 * @param breakpoints The breakpoints to remove.
	 */
	function removeBreakpoints(breakpoints:Array<Breakpoint>):Void;
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
	 * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
	 */
	function registerTaskProvider(type:String, provider:TaskProvider):Disposable;

	/**
	 * Fetches all tasks available in the systems. This includes tasks
	 * from `tasks.json` files as well as tasks from task providers
	 * contributed through extensions.
	 *
	 * @param filter a filter to filter the return tasks.
	 */
	function fetchTasks(?filter:TaskFilter):Thenable<Array<Task>>;

	/**
	 * Executes a task that is managed by VS Code. The returned
	 * task execution can be used to terminate the task.
	 *
	 * @param task the task to execute
	 */
	function executeTask(task:Task):Thenable<TaskExecution>;

	/**
	 * The currently active task executions or an empty array.
	 *
	 * @readonly
	 */
	var taskExecutions(default, null):ReadonlyArray<TaskExecution>;

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
