import sunaba.App;

import sunaba.core.Vector3;
import sunaba.core.native.NativeObject;
import sunaba.core.native.NativeReference;
import sunaba.core.Variant;
import sunaba.core.ArrayList;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		Sys.println("Hello, World!");

		var vec3 = new Vector3(1, 2, 3);
		Sys.println("Vector3: " + vec3.toString());

		var camera = new NativeObject("Camera3D");
		rootNodeNative.call("add_child", args([camera]));

		var meshInstance = new NativeObject("MeshInstance3D");
		rootNodeNative.call("add_child", args([meshInstance]));
		meshInstance.set("position", new Vector3(0, 0, -5));

		var boxMesh = new NativeReference("BoxMesh");
		boxMesh.set("size", new Vector3(1, 1, 1));
		meshInstance.set("mesh", boxMesh);

		var directionalLight = new NativeObject("DirectionalLight3D");
		rootNodeNative.call("add_child", args([directionalLight]));
	}

	function args(args: Array<Variant>): ArrayList {
		var newArgs = new ArrayList();
		for (arg in args) {
			newArgs.append(arg);
		}
		return newArgs;
	}
}
