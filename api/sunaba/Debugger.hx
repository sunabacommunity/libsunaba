package sunaba;

import haxe.Constraints.Function;
import haxe.extern.Rest;
import lua.Lua.PCallResult;
import lua.Table;

@:native("dbg")
extern class Dbg {
    public static var read: (String)->String;
    public static var write: (String)->Void;
    @:native("shorten_path")
    public static var shortenPath: (String)->String;
    public static var exit: (Int)->Void;
    public static var pretty: (Table<Any, Any>, ?Int)->String;
    public static var writeln: (String, ...String)->Void;
    @:native("pretty_depth")
    public static var prettyDepth: Int;
    public static var pp: (String, ...String)->Void;
    @:native("auto_where")
    public static var autoWhere: Any;
    public static function error(message:String, ?level:Int):Void;
    @:generic
    public static function assert<T>(v:T, ?message:String):T;
    public static function call(f:Function, rest:Rest<Dynamic>):PCallResult;
}

class Debugger extends BaseClass {
    
}