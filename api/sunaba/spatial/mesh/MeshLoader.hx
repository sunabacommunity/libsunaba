package sunaba.spatial.mesh;

import sunaba.core.Variant;
import sunaba.core.ArrayList;
import sunaba.core.native.NativeReference;
import sunaba.Material;

class MeshLoader extends Behavior {
	private var _meshData: MeshData;

	public var meshData(get, set): MeshData;
	function get_meshData(): MeshData {
		return _meshData;
	}
	function set_meshData(value: MeshData): MeshData {
		setMeshData(value);
		return value;
	}

	public override function onInit() {
		editorIconPath = "studio://icons/16/cushion.png";
	}

	private inline function setMeshData(data: MeshData) {
		_meshData = data;

		var arrayMesh = new NativeReference("ArrayMesh");

		for (i in 0..._meshData.surfaces.size()) {
			var surfaceVariant = _meshData.surfaces.get(i);
			var surface: ArrayList = surfaceVariant;

			if (surface.size() == 0) {
				continue;
			}

			var addSurfaceFromArraysArgs = new ArrayList();
			addSurfaceFromArraysArgs.append(Variant.fromInt(PrimitiveType.triangles));
			addSurfaceFromArraysArgs.append(surface);
			arrayMesh.call("add_surface_from_arrays", addSurfaceFromArraysArgs);
		}

		for (i in 0..._meshData.surfaceNames.length) {
			var surfaceName = _meshData.surfaceNames[i];

			var surfaceSetNameArgs = new ArrayList();
			surfaceSetNameArgs.append(i);
			surfaceSetNameArgs.append(surfaceName);
			arrayMesh.call("surface_set_name", surfaceSetNameArgs);
		}

		for (i in 0..._meshData.surfaceMaterials.size()) {
			var surfaceMaterial = new Material(_meshData.surfaceMaterials.get(i));

			var surfaceSetMaterialArgs = new ArrayList();
			surfaceSetMaterialArgs.append(i);
			surfaceSetMaterialArgs.append(surfaceMaterial.native);
			arrayMesh.call("surface_set_material", surfaceSetMaterialArgs);
		}

		var meshDisplay = getComponent(MeshDisplay);
		if (meshDisplay != null) {
			meshDisplay.setMesh(new Resource(arrayMesh));
		}
	}

	public override function onStart() {
		setMeshData(_meshData);
	}

	public override function onEnd() {
		var meshDisplay: MeshDisplay = getComponent(MeshDisplay);
		meshDisplay.setMesh(null);
	}
}
