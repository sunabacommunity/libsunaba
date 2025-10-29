import sunaba.App;
import sunaba.SceneRoot;
import sunaba.Entity;
import sunaba.spatial.SpatialTransform;
import sunaba.SceneFile;
import sunaba.spatial.Camera;
import sunaba.spatial.mesh.BoxMesh;
import sunaba.spatial.mesh.MeshDisplay;
import myComponents.RotateComponent;
import sunaba.Node;
import sunaba.Environment;
import sunaba.ResourceLoaderService.ResourceLoaderService.load;
import sunaba.ResourceLoaderService;
import sunaba.core.native.NativeObject;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		var sceneFile = new SceneFile();
		sceneFile.load("app://TestScene.vscn");

		var scene = sceneFile.instance();

		var envRes = ResourceLoaderService.load("res://environments/new_environment.tres");
		var environment = new Environment(envRes.native);
		var worldEnv = new Node(new NativeObject("WorldEnvironment"));
		worldEnv.native.set("environment", environment.native);
		rootNode.addChild(worldEnv);

		rootNode.addChild(scene);
		printScene(scene);
	}

	public function printEntity(entity: Entity, indent: String = "    ") {
		Sys.println(indent + "Entity: " + entity.name);
		var transform = entity.getComponent(SpatialTransform);
		if (transform != null) {
			var position = transform.position;
			var rotation = transform.rotation;
			var scale = transform.scale;
			var globalPosition = transform.globalPosition;
			var globalRotation = transform.globalRotation;
			Sys.println(indent + "    Transform: " + position.toString() + ", " + rotation.toString() + ", " + scale.toString());
			Sys.println(indent + "    GlobalTransform: " + globalPosition.toString() + ", " + globalRotation.toString());
		}
		for (child in 0...entity.getChildCount()) {
			var childEntity = entity.getChild(child);
			printEntity(childEntity, indent + "    ");
		}
	}

	public function printScene(scene : SceneRoot) : Void {
		Sys.println("Scene: ");
		for (entity in 0...scene.getEntityCount()) {
			var entity = scene.getEntity(entity);
			printEntity(entity);
		}
	}
}
