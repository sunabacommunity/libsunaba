package sunaba;

@:generic
class GameEvent<T> {
	private var functions: Array<T>;

	private var objects: Map<T, BaseClass>;

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

	public function addWithObject(obj: BaseClass, func: T) {
		add(func);
		objects[func] = obj;
	}

	public inline function call(...args: Dynamic): Void {
		for (func in functions) {
			if (objects[func] != null) {
				Reflect.callMethod(objects[func], func, args);
			}
			Reflect.callMethod(null, func, args);
		}
	}
}
