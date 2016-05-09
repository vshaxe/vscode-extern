package vscode;

typedef DiagnosticCollection = {
	var name:String;
	@:overload(function(entries:Array<Array<Dynamic>>):Void {})
	function set(uri:Uri, diagnostics:Array<Diagnostic>):Void;
	function delete(uri:Uri):Void;
	function get(uri:Uri):Array<Diagnostic>;
	function has(uri:Uri):Bool;
	function clear():Void;
	function dispose():Void;
	function forEach(callback:Uri->Array<Diagnostic>->DiagnosticCollection->Void, ?thisArg:Dynamic):Void;
}
