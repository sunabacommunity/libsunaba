package;

import sunaba.spatial.BaseTextures;
import sunaba.Prefab;
import sunaba.spatial.SpatialTransform;
import sunaba.Debug;
import sunaba.spatial.MapFile;
import sunaba.App;
import sunaba.SceneFile;
import sunaba.Node;
import sunaba.Environment;
import sunaba.ResourceLoaderService;
import sunaba.core.native.NativeObject;
import sunaba.spatial.Camera;
import sunaba.spatial.mesh.BoxMesh;
import sunaba.spatial.mesh.CapsuleMesh;
import sunaba.spatial.mesh.MeshDisplay;
import sunaba.spatial.lighting.DirectionalLight;
import sunaba.spatial.physics.StaticBody;
import sunaba.spatial.physics.CharacterBody;
import sunaba.spatial.physics.BoxShape;
import sunaba.spatial.physics.CapsuleShape;
import test19.CharacterController;
import test26.CharacterModelRig;
import sunaba.spatial.CharacterBoneMapper;
import sunaba.spatial.CharacterLoader;

class Main extends App {
	public static function main() {
		new Main();
	}

	public function onReady() {
		var mapFile = new MapFile("app://base.map");
		mapFile.textureDirs.push(BaseTextures.Water);

		var scene = mapFile.instantiate();
		scene.io = io;
		scene.isInEditor = false;

		rootNode.addChild(scene);

		var spawnPointEntity = scene.find("Spawn");
		trace(spawnPointEntity == null);

		var spawnPoint = spawnPointEntity.getComponent(SpatialTransform);
		
		var playerPrefab = new Prefab();
		playerPrefab.load("app://Player.vpfb");

		try {
			var player = playerPrefab.instance();
			var playerTransform = player.getComponent(SpatialTransform);
			playerTransform.transform = spawnPoint.transform;
			scene.addEntity(player);
		}
		catch(e) {
			Debug.error(e.toString());
		}
	}
}
