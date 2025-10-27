import sunaba.App;
import sunaba.SceneRoot;
import sunaba.Entity;
import sunaba.spatial.SpatialTransform;
import sunaba.core.Vector3;
import sunaba.spatial.Camera;
import sunaba.spatial.mesh.MeshDisplay;
import sunaba.spatial.mesh.BoxMesh;
import myComponents.RotateComponent;
import sunaba.Debug;
import sunaba.spatial.World3D;
import sunaba.ResourceLoaderService;
import sunaba.Environment;

class Main extends App {
    public static function main() {
        new Main();
    }

	public override function init() {
		try {
			var scene = new SceneRoot();
			rootNode.addChild(scene);

			var entity1 = new Entity();
			entity1.name = "Entity1";
			var e1Transform = entity1.addComponent(SpatialTransform);
			scene.addEntity(entity1);
			e1Transform.position = new Vector3(1, 2, 3);
			var child1 = new Entity();
			child1.name = "Child1";
			var c1Transform = child1.addComponent(SpatialTransform);
			entity1.addChild(child1);
			c1Transform.position = new Vector3(4, 5, 6);
			var entity2 = new Entity();
			var e2Transform = entity2.addComponent(SpatialTransform);
			scene.addEntity(entity2);
			e2Transform.position = new Vector3(7, 8, 9);

			var cameraEntity = new Entity();
			cameraEntity.name = "Camera";
			var cameraTransform = cameraEntity.addComponent(SpatialTransform);
			var camera = cameraEntity.addComponent(Camera);
			scene.addEntity(cameraEntity);
			cameraTransform.position = new Vector3(0, 0, 1);
			var boxEntity = new Entity();
			boxEntity.name = "Box";
			var boxTransform = boxEntity.addComponent(SpatialTransform);
			var boxMeshDisplay = boxEntity.addComponent(MeshDisplay);
			var boxMesh = boxEntity.addComponent(BoxMesh);
			boxMesh.size = new Vector3(1, 1, 1);
			var rotateComponent = boxEntity.addComponent(RotateComponent);
			scene.addEntity(boxEntity);
			boxTransform.position = new Vector3(0, 0, -1);

			var viewport = rootNode.getViewport();
			if (!viewport.isNull()) {
				var world3D = new World3D();
				var envRes = ResourceLoaderService.load("res://environments/new_environment.tres");
				var environment = new Environment(envRes.native);
				world3D.environment = environment;
				viewport.world3d = world3D;
			}

			printScene(scene);
		}
		catch (e) {
			Debug.error("Error: " + e + " : " + e.stack);
		}
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
