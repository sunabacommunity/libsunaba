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
	private var _env: Table<Dynamic, Dynamic>;
	private var _commands: Map<String, Array<String>->Int>;

	public function new() {
		super();
		_commands = new Map();
		_env = untyped __lua__("setmetatable({}, { __index = _G })");
		io = new IoInterface(untyped __lua__("__ioManager"));

		var printFunc = (args: ...String) -> {
			var finalArr: Array<String> = [];
			for (arg in args) {
				finalArr.push(Std.string(arg));
			}
			var msg = "";
			for (_msg in finalArr) {
				msg += _msg;
				if (finalArr.pop() != _msg) {
					msg += " ";
				}
			}
			print.call(msg);
		};
		var _e = _env;
		untyped __lua__("_e['print'] = printFunc");

		var callCommand = this.callCommand;
		untyped __lua__("_e['__command'] = callCommand");

		var commandArray = (args: Array<String>) -> {
			var results = [];
			for (arg in args) {
				trace(arg);
				results.push(cmd(arg));
			}
			if (results.length == 1) {
				return results[0];
			}
			return 0;
		};
		addCommand("cmd", commandArray);
		eval("$ = function(command) cmd({command}) end");

		addCommand("run", (args) -> {
			var code = io.loadText(args[0]);
			return eval(code);
		});
	}

	private function callCommand(name: String, argsTable: Table<Int, String>): Int {
		for (key in _commands.keys()) {
			if (key == name) {
				var func = _commands[key];
				var args = Table.toArray(argsTable);
				return func(args);
			}
		}

		throw "Invalid command: " + name;
	}

	public var io: IoInterface;

	private var _print: GameEvent<String->Void>;
	public var print(get, default): GameEvent<String->Void>;
	function get_print():GameEvent<String->Void> {
		if (_print == null) {
			_print = new GameEvent<String->Void>();
		}
		return _print;
	}

	public function addCommand(name: String, func: Array<String>->Int) {
		_commands[name] = func;
		var wrappedFunc = (_argsTable: Table<Int, String>) -> {
			var args = Table.toArray(_argsTable);
			func(args);
		}
		var e = _env;
		var _name = name;
		untyped __lua__("e[_name] = wrappedFunc");
	}

	public function eval(code: String): Int {

		var env = this._env;
		var _code = code;
		if (StringTools.contains(_code, "$"))
			_code = StringTools.replace(_code, "$", "_G[\"$\"]");

		try {
			untyped __lua__("local chunk = load(_code, nil, 't', env)");

			var res = untyped __lua__("chunk()");
			if (Std.isOfType(res, Int)) {
				return cast res;
			}
		}
		catch (e) {
			throw e;
		}
		return -1;
	}

	public function cmd(command: String) {
		var parsedCommand = CommandParser.parseCommand(command);
		if (parsedCommand == null) {
			throw "Invalid command format";
			return -1;
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
		return eval(luastr);
	}

	public function log(string: String) {
		// Escape special characters for Lua string literal
		var escaped = string
		.split("\\").join("\\\\")   // Backslash must be first
		.split("'").join("\\'")     // Single quote
		.split("\n").join("\\n")    // Newline
		.split("\r").join("\\r")    // Carriage return
		.split("\t").join("\\t")    // Tab
		.split("\x00").join("\\0"); // Null byte
		var code = "print('" + escaped + "')";
		eval(code);
	}
}
