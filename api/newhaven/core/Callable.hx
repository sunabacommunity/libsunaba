package newhaven.core;
import newhaven.core.native.NativeObject;
import newhaven.core.native.NativeReference;
import haxe.Constraints.Function;
import newhaven.core.native.ScriptType;

@:native("Callable")
extern class CallableNative {
	//public function new(func : Function);
	@:native("new")
	public static function createFromObject(object: BaseClass, method: String): CallableNative;
	public function bind(arg: ArrayList): Callable;
	public function call(args: ArrayList): Variant;
	public function getArgumentCount(): Int;
	public function getBoundArguments(): ArrayList;
	public function getBoundArgumentsCount(): Int;
	public function getObject(): NativeObject;
	public function getReference(): Reference;
	public function getUnboundArgumentsCount(): Int;
	public function hash(): Int;
	public function isCustom(): Bool;
	public function isNull(): Bool;
	public function isStandard(): Bool;
	public function isValid(): Bool;
	public function unbind(argcount: Int): CallableNative;
}

@:forward(
	createFromObject,
	bind,
	call,
	getArgumentCount,
	getBoundArguments,
	getBoundArgumentsCount,
	getObject,
	getReference,
	getUnboundArgumentsCount,
	hash,
	isCustom,
	isNull,
	isStandard,
	isValid,
	unbind
)
abstract Callable(CallableNative) from CallableNative to CallableNative {
	public function new(func: Function) {
		var scriptFunctionWrapper = new NativeObject("res://Engine/ScriptFunctionWrapper.gd", new ArrayList(), ScriptType.gdscript);
		scriptFunctionWrapper.set("function", VariantNative.fromFunction(func));
		var callable: Callable = scriptFunctionWrapper.call("to_callable", new ArrayList());
		this = callable;
	}

	@:from
	public static function fromFunction(func: Function): Callable {
		return new Callable(func);
	}
}

