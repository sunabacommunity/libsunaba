package sunaba;

import haxe.Constraints.Function;

@:generic
class GameEvent<T: Function> {
	private var functions: Array<T>;

	public function new() {
		clear();
	}

	public inline function clear() {
		functions = [];
	}

	public inline function add(func: T) {
		functions.push(func);
	}

	public inline  function remove(func: T) {
		functions.remove(func);
		if (objects[func] != null) {
			objects[func] = null;
		}
	}

	public inline function has(func: T) {
		return functions.contains(func);
	}

	public inline function call(...args: Dynamic): Void {
		for (func in functions) {
			Reflect.callMethod(null, func, args);
		}
	}
}
