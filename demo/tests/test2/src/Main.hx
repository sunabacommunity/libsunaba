import newhaven.App;

import newhaven.core.Vector3;
import newhaven.core.native.NativeObject;
import newhaven.core.native.NativeReference;
import newhaven.core.Variant;
import newhaven.core.ArrayList;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		Sys.println("Hello, World!");

		var vec3 = new Vector3(1, 2, 3);
		Sys.println("Vector3: " + vec3.toString());

		trace("");
		var camera = new NativeObject("Camera3D");
		trace("");
		trace("Camera is null: " + camera.isNull());
		trace("");
		trace("Root Node Native is null: " + rootNodeNative.isNull());
		trace(rootNodeNative.isClass("Node"));
		rootNodeNative.call("add_child", args([camera]));

		trace("");
		var meshInstance = new NativeObject("MeshInstance3D");
		trace("");
		rootNodeNative.call("add_child", args([meshInstance]));
		trace("");
		meshInstance.set("position", new Vector3(0, 0, -5));

		trace("");
		var boxMesh = new NativeReference("BoxMesh");
		boxMesh.set("size", new Vector3(1, 1, 1));
		trace("");
		meshInstance.set("mesh", boxMesh);


		trace("");
		var directionalLight = new NativeObject("DirectionalLight3D");
		trace("");
		rootNodeNative.call("add_child", args([directionalLight]));

		trace("");
	}

	function args(args: Array<Variant>): ArrayList {
		var newArgs = new ArrayList();
		for (arg in args) {
			newArgs.append(arg);
		}
		return newArgs;
	}
}
