import js.Promise.Thenable;
import haxe.Constraints.Function;
import haxe.extern.EitherType;
import haxe.extern.Rest;

import vscode.*;

@:jsRequire("vscode")
extern class Vscode {
    /**
     * The version of the editor.
     */
    static var version(default,null):String;

    /**
    * Namespace describing the environment the editor runs in.
    */
    static var env(default,null):VscodeEnv;

    /**
    * Namespace for dealing with commands. In short, a command is a function with a
    * unique identifier. The function is sometimes also called _command handler_.
    *
    * Commands can be added to the editor using the [registerCommand](#commands.registerCommand)
    * and [registerTextEditorCommand](#commands.registerTextEditorCommand) functions. Commands
    * can be executed [manually](#commands.executeCommand) or from a UI gesture. Those are:
    *
    * * palette - Use the `commands`-section in `package.json` to make a command show in
    * the [command palette](https://code.visualstudio.com/docs/editor/codebasics#_command-palette).
    * * keybinding - Use the `keybindings`-section in `package.json` to enable
    * [keybindings](https://code.visualstudio.com/docs/customization/keybindings#_customizing-shortcuts)
    * for your extension.
    *
    * Commands from other extensions and from the editor itself are accessible to an extension. However,
    * when invoking an editor command not all argument types are supported.
    *
    * This is a sample that registers a command handler and adds an entry for that command to the palette. First
    * register a command handler with the identfier `extension.sayHello`.
    * ```javascript
    * commands.registerCommand('extension.sayHello', () => {
    *   window.showInformationMessage('Hello World!');
    * });
    * ```
    * Second, bind the command identfier to a title under which it will show in the palette (`package.json`).
    * ```json
    * {
    * "contributes": {
    *   "commands": [{
    *       "command": "extension.sayHello",
    *       "title": "Hello World"
    *   }]
    * }
    * ```
    */
    static var commands(default,null):VscodeCommands;

    /**
    * Namespace for dealing with the current window of the editor. That is visible
    * and active editors, as well as, UI elements to show messages, selections, and
    * asking for user input.
    */
    static var window(default,null):VscodeWindow;

    /**
    * Namespace for dealing with the current workspace. A workspace is the representation
    * of the folder that has been opened. There is no workspace when just a file but not a
    * folder has been opened.
    *
    * The workspace offers support for [listening](#workspace.createFileSystemWatcher) to fs
    * events and for [finding](#workspace.findFiles) files. Both perform well and run _outside_
    * the editor-process so that they should be always used instead of nodejs-equivalents.
    */
    static var workspace(default,null):VscodeWorkspace;

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
     *  provideHover(document, position, token) {
     *      return new Hover('I am a hover!');
     *  }
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
    static var languages(default,null):VscodeLanguages;

    /**
     * Namespace for dealing with installed extensions. Extensions are represented
     * by an [extension](#Extension)-interface which allows to reflect on them.
     *
     * Extension writers can provide APIs to other extensions by returning their API public
     * surface from the `activate`-call.
     *
     * ```javascript
     * export function activate(context: vscode.ExtensionContext) {
     *  let api = {
     *      sum(a, b) {
     *          return a + b;
     *      },
     *      mul(a, b) {
     *          return a * b;
     *      }
     *  };
     *  // 'export' public api-surface
     *  return api;
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
    static var extensions(default,null):VscodeExtensions;
}

extern class VscodeEnv {
    /**
     * The application name of the editor, like 'VS Code'.
     *
     * @readonly
     */
    var appName(default,null):String;

    /**
     * Represents the preferred user-language, like `de-CH`, `fr`, or `en-US`.
     *
     * @readonly
     */
    var language(default,null):String;

    /**
     * A unique identifier for the computer.
     *
     * @readonly
     */
    var machineId(default,null):String;

    /**
     * A unique identifier for the current session.
     * Changes each time the editor is started.
     *
     * @readonly
     */
    var sessionId(default,null):String;
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
     * When executing an editor command not all types are allowed to
     * be passed as arguments. Allowed are the primitive types `string`, `boolean`,
     * `number`, `undefined`, and `null`, as well as classes defined in this API.
     * There are no restrictions when executing commands that have been contributed
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
    var onDidChangeActiveTextEditor(default,null):Event<TextEditor>;

    /**
     * An [event](#Event) which fires when the array of [visible editors](#window.visibleTextEditors)
     * has changed.
     */
    var onDidChangeVisibleTextEditors(default,null):Event<Array<TextEditor>>;

    /**
     * An [event](#Event) which fires when the selection in an editor has changed.
     */
    var onDidChangeTextEditorSelection(default,null):Event<TextEditorSelectionChangeEvent>;

    /**
     * An [event](#Event) which fires when the options of an editor have changed.
     */
    var onDidChangeTextEditorOptions(default,null):Event<TextEditorOptionsChangeEvent>;

    /**
     * An [event](#Event) which fires when the view column of an editor has changed.
     */
    var onDidChangeTextEditorViewColumn(default,null):Event<TextEditorViewColumnChangeEvent>;

    /**
     * An [event](#Event) which fires when a terminal is disposed.
     */
    var onDidCloseTerminal(default,null):Event<Terminal>;

    /**
     * Show the given document in a text editor. A [column](#ViewColumn) can be provided
     * to control where the editor is being shown. Might change the [active editor](#window.activeTextEditor).
     *
     * @param document A text document to be shown.
     * @param column A view column in which the editor should be shown. The default is the [one](#ViewColumn.One), other values
     * are adjusted to be __Min(column, columnCount + 1)__.
     * @param preserveFocus When `true` the editor will not take focus.
     * @return A promise that resolves to an [editor](#TextEditor).
     */
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
    @:overload(function(message:String, items:Rest<String>):Thenable<Null<String>> {})
    function showInformationMessage<T:MessageItem>(message:String, items:Rest<T>):Thenable<Null<T>>;

    /**
     * Show a warning message.
     *
     * @see [showInformationMessage](#window.showInformationMessage)
     *
     * @param message The message to show.
     * @param items A set of items that will be rendered as actions in the message.
     * @return A thenable that resolves to the selected item or `undefined` when being dismissed.
     */
    @:overload(function(message:String, items:Rest<String>):Thenable<Null<String>> {})
    function showWarningMessage<T:MessageItem>(message:String, items:Rest<T>):Thenable<Null<T>>;

    /**
     * Show an error message.
     *
     * @see [showInformationMessage](#window.showInformationMessage)
     *
     * @param message The message to show.
     * @param items A set of items that will be rendered as actions in the message.
     * @return A thenable that resolves to the selected item or `undefined` when being dismissed.
     */
    @:overload(function(message:String, items:Rest<String>):Thenable<Null<String>> {})
    function showErrorMessage<T:MessageItem>(message:String, items:Rest<T>):Thenable<Null<T>>;

    /**
     * Shows a selection list.
     *
     * @param items An array of strings, or a promise that resolves to an array of strings.
     * @param options Configures the behavior of the selection list.
     * @param token A token that can be used to signal cancellation.
     * @return A promise that resolves to the selection or `undefined`.
     */
    @:overload(function(items:EitherType<Array<String>, Thenable<Array<String>>>, ?options:QuickPickOptions, ?token:CancellationToken):Thenable<Null<String>> {})
    function showQuickPick<T:QuickPickItem>(items:EitherType<Array<T>, Thenable<Array<T>>>, ?options:QuickPickOptions, ?token:CancellationToken):Thenable<Null<T>>;

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
     * Create a new [output channel](#OutputChannel) with the given name.
     *
     * @param name Human-readable string which will be used to represent the channel in the UI.
     */
    function createOutputChannel(name:String):OutputChannel;

    /**
     * Set a message to the status bar. This is a short hand for the more powerful
     * status bar [items](#window.createStatusBarItem).
     *
     * @param text The message to show, support icon subtitution as in status bar [items](#StatusBarItem.text).
     * @param hideAfterTimeout Timeout in milliseconds after which the message will be disposed.
     * @param hideWhenDone Thenable on which completion (resolve or reject) the message will be disposed.
     * @return A disposable which hides the status bar message.
     */
    @:overload(function(text:String, hideAfterTimeout:Float):Disposable {})
    @:overload(function(text:String, hideWhenDone:Thenable<Any>):Disposable {})
    function setStatusBarMessage(text:String):Disposable;

    /**
     * Creates a status bar [item](#StatusBarItem).
     *
     * @param alignment The alignment of the item.
     * @param priority The priority of the item. Higher values mean the item should be shown more to the left.
     * @return A new status bar item.
     */
    function createStatusBarItem(?alignment:StatusBarAlignment, ?priority:Float):StatusBarItem;

    /**
     * Creates a [Terminal](#Terminal).
     *
     * @param name Optional human-readable string which will be used to represent the terminal in the UI.
     * @param shellPath Optional path to a custom shell executable to be used in the terminal.
     * @param shellArgs Optional args for the custom shell executable, this does not work on Windows (see #8429)
     * @return A new Terminal.
     */
    function createTerminal(?name:String, ?shellPath:String, ?shellArgs:Array<String>):Terminal;
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
    var all(default,null):Array<Extension<Any>>;
}

extern class VscodeLanguages {
    /**
     * Return the identifiers of all known languages.
     * @return Promise resolving to an array of identifier strings.
     */
    function getLanguages():Thenable<Array<String>>;

    /**
     * Compute the match between a document [selector](#DocumentSelector) and a document. Values
     * greater than zero mean the selector matches the document. The more individual matches a selector
     * and a document have, the higher the score is. These are the abstract rules given a `selector`:
     *
     * ```
     * (1) When selector is an array, return the maximum individual result.
     * (2) When selector is a string match that against the [languageId](#TextDocument.languageId).
     *  (2.1) When both are equal score is `10`,
     *  (2.2) When the selector is `*` score is `5`,
     *  (2.3) Else score is `0`.
     * (3) When selector is a [filter](#DocumentFilter) return the maximum individual score given that each score is `>0`.
     *  (3.1) When [language](#DocumentFilter.language) is set apply rules from #2, when `0` the total score is `0`.
        *   (3.2) When [scheme](#DocumentFilter.scheme) is set and equals the [uri](#TextDocument.uri)-scheme score with `10`, else the total score is `0`.
        *   (3.3) When [pattern](#DocumentFilter.pattern) is set
        *       (3.3.1) pattern equals the [uri](#TextDocument.uri)-fsPath score with `10`,
        *       (3.3.1) if the pattern matches as glob-pattern score with `5`,
        *       (3.3.1) the total score is `0`
        * ```
        *
        * @param selector A document selector.
        * @param document A text document.
        * @return A number `>0` when the selector matches and `0` when the selector does not match.
        */
    function match(selector:DocumentSelector, document:TextDocument):Float;

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
     * @return A [disposable](#Disposable) that unregisters this provider when being disposed.
     */
    function registerCodeActionsProvider(selector:DocumentSelector, provider:CodeActionProvider):Disposable;

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
    function registerOnTypeFormattingEditProvider(selector:DocumentSelector, provider:OnTypeFormattingEditProvider, firstTriggerCharacter:String, moreTriggerCharacter:haxe.extern.Rest<String>):Disposable;

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
     * Creates a file system watcher.
     *
     * A glob pattern that filters the file events must be provided. Optionally, flags to ignore certain
     * kinds of events can be provided. To stop listening to events the watcher must be disposed.
     *
     * @param globPattern A glob pattern that is applied to the names of created, changed, and deleted files.
     * @param ignoreCreateEvents Ignore when files have been created.
     * @param ignoreChangeEvents Ignore when files have been changed.
     * @param ignoreDeleteEvents Ignore when files have been deleted.
     * @return A new file system watcher instance.
     */
    function createFileSystemWatcher(globPattern:String, ?ignoreCreateEvents:Bool, ?ignoreChangeEvents:Bool, ?ignoreDeleteEvents:Bool):FileSystemWatcher;

    /**
     * The folder that is open in VS Code. `undefined` when no folder
     * has been opened.
     *
     * @readonly
     */
    var rootPath(default,null):Null<String>;

    /**
     * Returns a path that is relative to the workspace root.
     *
     * When there is no [workspace root](#workspace.rootPath) or when the path
     * is not a child of that folder, the input is returned.
     *
     * @param pathOrUri A path or uri. When a uri is given its [fsPath](#Uri.fsPath) is used.
     * @return A path relative to the root or the input.
     */
    function asRelativePath(pathOrUri:EitherType<String, Uri>):String;

    /**
     * Find files in the workspace.
     *
     * @sample `findFiles('**∕*.js', '**∕node_modules∕**', 10)`
     * @param include A glob pattern that defines the files to search for.
     * @param exclude A glob pattern that defines files and folders to exclude.
     * @param maxResults An upper-bound for the result.
     * @param token A token that can be used to signal cancellation to the underlying search engine.
     * @return A thenable that resolves to an array of resource identifiers.
     */
    function findFiles(include:String, ?exclude:String, ?maxResults:Int, ?token:CancellationToken):Thenable<Array<Uri>>;

    /**
     * Save all dirty files.
     *
     * @param includeUntitled Also save files that have been created during this session.
     * @return A thenable that resolves when the files have been saved.
     */
    function saveAll(?includeUntitled:Bool):Thenable<Bool>;

    /**
     * Make changes to one or many resources as defined by the given
     * [workspace edit](#WorkspaceEdit).
     *
     * When applying a workspace edit, the editor implements an 'all-or-nothing'-strategy,
     * that means failure to load one document or make changes to one document will cause
     * the edit to be rejected.
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
    var textDocuments(default,null):Array<TextDocument>;

    /**
     * Opens the denoted document from disk. Will return early if the
     * document is already open, otherwise the document is loaded and the
     * [open document](#workspace.onDidOpenTextDocument)-event fires.
     * The document to open is denoted by the [uri](#Uri). Two schemes are supported:
     *
     * file: A file on disk, will be rejected if the file does not exist or cannot be loaded, e.g. `file:///Users/frodo/r.ini`.
     * untitled: A new file that should be saved on disk, e.g. `untitled:c:\frodo\new.js`. The language will be derived from the file name.
     *
     * Uris with other schemes will make this method return a rejected promise.
     *
     * @param uri Identifies the resource to open.
     * @return A promise that resolves to a [document](#TextDocument).
     */
    // TODO overload plox
    // /**
    //  * A short-hand for `openTextDocument(Uri.file(fileName))`.
    //  *
    //  * @see [openTextDocument](#openTextDocument)
    //  * @param fileName A name of a file on disk.
    //  * @return A promise that resolves to a [document](#TextDocument).
    //  */
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
     * An event that is emitted when a [text document](#TextDocument) is opened.
     */
    var onDidOpenTextDocument(default,null):Event<TextDocument>;

    /**
     * An event that is emitted when a [text document](#TextDocument) is disposed.
     */
    var onDidCloseTextDocument(default,null):Event<TextDocument>;

    /**
     * An event that is emitted when a [text document](#TextDocument) is changed.
     */
    var onDidChangeTextDocument(default,null):Event<TextDocumentChangeEvent>;


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
    var onWillSaveTextDocument(default,null):Event<TextDocumentWillSaveEvent>;

    /**
     * An event that is emitted when a [text document](#TextDocument) is saved to disk.
     */
    var onDidSaveTextDocument(default,null):Event<TextDocument>;

    /**
     * Get a configuration object.
     *
     * When a section-identifier is provided only that part of the configuration
     * is returned. Dots in the section-identifier are interpreted as child-access,
     * like `{ myExt: { setting: { doIt: true }}}` and `getConfiguration('myExt.setting').get('doIt') === true`.
     *
     * @param section A dot-separated identifier.
     * @return The full workspace configuration or a subset.
     */
    function getConfiguration(?section:String):WorkspaceConfiguration;

    /**
     * An event that is emitted when the [configuration](#WorkspaceConfiguration) changed.
     */
    var onDidChangeConfiguration(default,null):Event<Void>;
}
