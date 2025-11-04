package sunaba;

import sunaba.core.TypedArray;
import sunaba.core.Object;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.native.NativeObject;
import sunaba.core.ArrayList;

class Runtime extends Node {
	public var args(get, set): TypedArray<String>;
	function get_args():TypedArray<String> {
		return native.get("args");
	}
	function set_args(value:TypedArray<String>):TypedArray<String> {
		native.set("args", value);
		return value;
	}

	public function new(?_native: NativeObject) {
		super();
		if (_native == null) {
			_native = new NativeObject("Runtime");
		}
		native = _native;
	}

	public function bindObject(name: String, obj: Object): Void {
		var args = new ArrayList();
		args.append(name);
		args.append(obj);
		native.call("bind_object", args);
	}

	public function bindReference(name: String, ref: Reference): Void {
		var args = new ArrayList();
		args.append(name);
		args.append(ref);
		native.call("bind_object", args);
	}

	public function doString(code: String): Void {
		var args= new ArrayList();
		args.append(code);
		native.call("do_string", args);
	}

	public function initState(?sandboxed: Bool, ?classes: ArrayList) {
		var args = new ArrayList();
		if (sandboxed != null) {
			args.append(sandboxed);
		}
		if (classes != null) {
			args.append(classes);
		}
		native.call("init_state", args);
	}

	public function setVar(name: String, variant: Variant): Void {
		var args = new ArrayList();
		args.append(name);
		args.append(variant);
		native.call("set_var", args);
	}
}
