package;

import sunaba.App;
import sunaba.SceneFile;
import sunaba.Node;
import sunaba.Environment;
import sunaba.ResourceLoaderService;
import sunaba.core.native.NativeObject;
import myComponents.FreeLook3D;
import sunaba.spatial.Camera;
import sunaba.spatial.mesh.BoxMesh;
import sunaba.spatial.mesh.SphereMesh;
import sunaba.spatial.mesh.CapsuleMesh;
import sunaba.spatial.mesh.CylinderMesh;
import sunaba.spatial.mesh.MeshDisplay;
import sunaba.spatial.lighting.DirectionalLight;
import sunaba.spatial.physics.StaticBody;
import sunaba.spatial.physics.BoxShape;
import sunaba.spatial.physics.SphereShape;
import sunaba.spatial.physics.CapsuleShape;
import sunaba.spatial.physics.CylinderShape;

class Main extends App {
	public static function main() {
		new Main();
	}

	public override function init() {
		var sceneFile = new SceneFile();
		sceneFile.load("app://TestScene.vscn");

		var scene = sceneFile.instance();

		var envRes = ResourceLoaderService.load("res://Engine/Environments/new_environment.tres");
		var environment = new Environment(envRes.native);
		var worldEnv = new Node(new NativeObject("WorldEnvironment"));
		worldEnv.native.set("environment", environment.native);
		rootNode.addChild(worldEnv);

		rootNode.addChild(scene);

		trace("");
	}
}
