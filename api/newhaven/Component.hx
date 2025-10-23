package newhaven;

import newhaven.core.Reference;
import newhaven.core.native.NativeReference;
import newhaven.core.VariantNative;
import newhaven.core.native.NativeObject;

class Component extends Reference {
	public function new(?_native: NativeReference) {
		super();
		if (_native == null) {
			_native = new NativeReference('Component');
		}
		native = _native;
	}

	public var script(get, set): Behavior;
	function get_script():Behavior {
		return cast native.get("Script").toBaseClass();
	}
	function set_script(value:Behavior):Behavior {
		native.set("Script", value);
		return value;
	}

	public var name(get, set): String;
	function get_name():String {
		return native.get("Name");
	}
	function set_name(value:String):String {
		native.set("Name", value);
		return value;
	}

	public var gameObject(get, set): GameObject;
	function get_gameObject():GameObject {
		return new GameObject(native.get("GameObject"));
	}
	function set_gameObject(value:GameObject):GameObject {
		native.set("GameObject", value.native);
		return value;
	}

	public var scene(get, default): Scene;
	function get_scene():Scene {
		return new Scene(native.get("Scene"));
	}

	public var editorIconPath(get, set): String;
	function get_editorIconPath():String {
		return native.get("EditorIconPath");
	}
	function set_editorIconPath(value:String):String {
		native.set("EditorIconPath", value);
		return value;
	}
}
