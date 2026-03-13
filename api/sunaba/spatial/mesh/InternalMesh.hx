package sunaba.spatial.mesh;

class InternalMesh extends Behavior {
	public var __res: Resource = null;

	private var meshDisplay: MeshDisplay;
	public function loadMesh(path: String) {
		meshDisplay = getComponent(MeshDisplay);
		__res = ResourceLoaderService.load(path);
		if (__res == null) {
			throw "we're cooked";
		}
		if (meshDisplay != null) {
			meshDisplay.setMesh(__res);
		}
	}

	public override function onStart() {
		if (meshDisplay == null) {
			meshDisplay = getComponent(MeshDisplay);
			if (meshDisplay != null) {
				meshDisplay.setMesh(__res);
			}
		}
	}


}
