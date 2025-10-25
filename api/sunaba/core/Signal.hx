package sunaba.core;

import sunaba.core.native.NativeObject;
import sunaba.core.native.NativeReference;

@:native("Signal")
extern class Signal {
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
