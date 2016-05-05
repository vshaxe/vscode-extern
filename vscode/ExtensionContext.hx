package vscode;

typedef ExtensionContext = {
	var subscriptions:Array<{ function dispose():Void; }>;
	var workspaceState:Memento;
	var globalState:Memento;
	var extensionPath:String;
	function asAbsolutePath(relativePath:String):String;
}
