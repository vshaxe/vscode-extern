import vscode.*;

class Main {
	@:expose("activate")
	static function activate(context:ExtensionContext) {
		context.subscriptions.push(Vscode.commands.registerCommand("hellohaxe.sayHello", function() {
			Vscode.window.showInformationMessage("Hello from Haxe!");
		}));
	}
}
