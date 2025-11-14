package sunaba;
import sunaba.core.Reference;
import sunaba.core.native.NativeReference;
import sunaba.core.ArrayList;
import sunaba.core.native.ScriptType;
import sunaba.core.TypedArray;
import sunaba.core.Variant;
import sunaba.core.VariantType;
import sunaba.io.IoInterface;
import sunaba.core.Signal;
import sunaba.core.Callable;
import lua.Table;

class ShellConsole extends Reference {
	public override function nativeInit(?_native: NativeReference) {
		if (_native == null) {
			_native = new NativeReference("res://Engine/ShellConsole.cs", new ArrayList(), ScriptType.csharp);
		}
		native = _native;

		var commandArray = (args: Array<String>) -> {
			for (arg in args) {
				trace(arg);
				cmd(arg);
			}
			return 0;
		}
		addCommand("cmd", commandArray);
		eval("$ = function(command) cmd({command}) end");
	}

	public var io(get, set): IoInterface;
	function get_io():IoInterface {
		return new IoInterface(native.get("IoInterface"));
	}
	function set_io(value:IoInterface):IoInterface {
		native.set("IoInterface", value.native);
		return value;
	}

	private var _print: Signal;
	public var print(get, default): Signal;
	function get_print():Signal {
		if (_print == null) {
			_print = Signal.createFromReference(native, "Print");
		}
		return _print;
	}

	public function addCommand(name: String, func: Array<String>->Int) {
		var args = new ArrayList();
		args.append(name);
		var wrappedFunc = (tableArgs: lua.Table<Int, String>) -> {
			var args = Table.toArray(tableArgs);
			return func(args);
		}
		args.append(Callable.fromFunction(wrappedFunc));
		native.call("AddCommand", args);
	}

	public function eval(code: String) {
		var args = new ArrayList();
		args.append(code);
		var variant: Variant = native.call("DoCode", args);
		if (variant.getType() == VariantType.string) {
			throw variant.toString();
		}
	}

	public function cmd(command: String) {
		var parsedCommand = CommandParser.parseCommand(command);
		if (parsedCommand == null) {
			throw "Invalid command format";
			return;
		}

		var luastr = "__command('" + parsedCommand.name + "', {";
		for (i in 0...parsedCommand.args.length) {
			var arg = parsedCommand.args[i];
			luastr += "'" + arg + "'";
			if (i != parsedCommand.args.length - 1) {
				luastr += ",";
			}
		}
		luastr += ("})");
		eval(luastr);
	}

	public function log(string: String) {
		var code = "print('" + string + "')";
		eval(code);
	}
}
