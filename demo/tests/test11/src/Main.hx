import sunaba.App;
import sunaba.SceneRoot;
import sunaba.Entity;
import sunaba.spatial.SpatialTransform;
import sunaba.SceneFile;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		var sceneFile = new SceneFile();
		sceneFile.load("app://TestScene.vscn");

		var scene = sceneFile.instance();

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
