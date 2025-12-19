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
	}
}
