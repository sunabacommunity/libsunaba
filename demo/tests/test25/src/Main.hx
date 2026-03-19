package;

import sunaba.App;
import sunaba.spatial.CharacterBoneMapper;
import sunaba.spatial.CharacterLoader;
import sunaba.SceneFile;
import sunaba.spatial.Camera;
import sunaba.ResourceLoaderService;
import sunaba.Environment;
import sunaba.Node;
import sunaba.core.native.NativeObject;

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
	}
}
