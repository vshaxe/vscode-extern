package vscode;

@:jsRequire("vscode", "Disposable")
extern class Disposable {
	static function from(disposableLikes:haxe.extern.Rest<{ function dispose():Void; }>):Disposable;
	function new(callOnDispose:haxe.Constraints.Function):Void;
	function dispose():Void;
}
