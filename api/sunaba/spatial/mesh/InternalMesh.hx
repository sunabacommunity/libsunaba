package sunaba.spatial.mesh;

class InternalMesh extends Behavior {


	public function loadMesh(path: String) {
		var meshDisplay = getComponent(MeshDisplay);
		if (meshDisplay != null) {
			var meshRes = ResourceLoaderService.load(path);
			meshDisplay.setMesh(meshRes);
		}
	}
}
