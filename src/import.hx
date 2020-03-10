#if haxe4
import js.lib.Error;
import js.lib.Promise;
import js.lib.RegExp;
#else
import js.Error;
import js.Promise;
import js.RegExp;
#end
import haxe.Constraints.Function;
import haxe.DynamicAccess;
import haxe.ds.ReadOnlyArray;
import haxe.extern.EitherType;
import haxe.extern.Rest;
