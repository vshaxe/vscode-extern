class HelloHaxe {
    @:expose("activate")
    static function activate(context:vscode.ExtensionContext) {
        context.subscriptions.push(Vscode.commands.registerCommand("hellohaxe.sayHello", function() {
            Vscode.window.showInformationMessage("Hello from Haxe!");
        }));
    }
}
