package sunaba.dotnet;
import sunaba.core.native.NativeObject;
import sunaba.core.ArrayList;
import sunaba.core.Variant;

class DotNetInteropService extends BaseClass {
	private static function getObj() {
		var nativeObj: NativeObject = untyped __lua__("_G.__dotnetInterop");
		return nativeObj;
	}

	public static function instantiate(classname: String, args: ArrayList) {
		var _args = new ArrayList();
		_args.append(classname);
		_args.append(args);
		return new DotNetObject(getObj().call("Instantiate", _args));
	}

	public static function callStatic(classname: String, methodname: String, args: ArrayList): Variant {
		var _args = new ArrayList();
		_args.append(classname);
		_args.append(methodname);
		_args.append(args);
		return getObj().call("CallStatic", _args);
	}
}
