package sunaba;
import sunaba.core.Reference;
import sunaba.core.Variant;
import sunaba.core.native.NativeObject;
import sunaba.core.native.NativeReference;
import sunaba.core.ArrayList;

class VariantHolder extends Reference {
	public var value(get, set): Variant;

	function get_value():Variant {
		return native.get("value");
	}


	function set_value(value:Variant):Variant {
		native.set("value", value);
		return value;
	}

	public override function nativeInit(?_native: NativeReference) {
		if (_native == null) {
			_native = new NativeReference('res://Engine/VaraintHolder.gd', new ArrayList(), 1);
		}
		this.native = _native;
	}
}
