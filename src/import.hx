#if haxe4
import js.lib.Error;
import js.lib.RegExp;
import js.lib.Promise.Thenable;
#else
import js.Error;
import js.RegExp;
import js.Promise.Thenable;
#end
import ts.ReadonlyArray;
import haxe.Constraints.Function;
import haxe.DynamicAccess;
import haxe.extern.Rest;
import haxe.extern.EitherType;
