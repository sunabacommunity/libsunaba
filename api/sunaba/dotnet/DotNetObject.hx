package sunaba.dotnet;
import sunaba.core.Reference;
import sunaba.core.native.NativeObject;
import sunaba.core.native.NativeReference;
import sunaba.core.Variant;
import sunaba.core.ArrayList;

class DotNetObject extends Reference {
	public override function nativeInit(?_native: NativeReference) {
		if (_native == null) {
			throw "DotNetObject cannot be instantiated directly";
		}
		native = _native;
	}

	public function getMember(name: String): Variant {
		var args = new ArrayList();
		args.append(name);
		return native.call("GetMember", args);
	}

	public function setMember(name: String, variant: Variant) {
		var args = new ArrayList();
		args.append(name);
		args.append(variant);
		native.call("SetMember", args);
	}

	public function callMethod(name: String, args: ArrayList): Variant {
		var _args = new ArrayList();
		_args.append(name);
		_args.append(args);
		return native.call("CallMethod", _args);
	}
}
