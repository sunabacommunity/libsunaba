package sunaba.core;

import sunaba.core.native.NativeObject;
import sunaba.core.native.NativeReference;
import haxe.Constraints.Function;

@:native("Signal")
extern class SignalNative {
	public function new();
	@:native("new")
	public static function createFromObject(object: NativeObject, signal: String): Signal;
	@:native("new")
	public static function createFromReference(ref: NativeReference, signal: String): Signal;
	public function connect(callable: Callable, ?flags: Int): Int;
	public function disconnect(callable: Callable): Void;
	public function getConnections(): ArrayList;
	public function getName(): String;
	public function getObject(): NativeObject;
	public function getReference(): NativeReference;
	public function hasConnections(): Bool;
	public function isConnected(callable: Callable): Bool;
	public function isNull(): Bool;
}

@:forward(
	connect,
	disconnect,
	getConnections,
	getName,
	getObject,
	getReference,
	hasConnections,
	isConnected,
	isNull
)
abstract Signal(SignalNative) from SignalNative to SignalNative {
	public function new() {
		this = new SignalNative();
	}

	public static function createFromObject(object: NativeObject, signal: String): Signal {
		return SignalNative.createFromObject(object, signal);
	}

	public static function createFromReference(ref: NativeReference, signal: String): Signal {
		return SignalNative.createFromReference(ref, signal);
	}

	public function add(func: Function): Callable {
		var callable = Callable.fromFunction(func);
		this.connect(callable);
		return callable;
	}

	public function remove(callable: Callable) {
		this.disconnect(callable);
	}
}
