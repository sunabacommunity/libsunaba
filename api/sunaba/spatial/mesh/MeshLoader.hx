package sunaba.spatial.mesh;

import sunaba.core.VariantNative;
import sunaba.core.Dictionary;
import sunaba.core.Variant;
import sunaba.core.VariantType;
import sunaba.core.ArrayList;
import sunaba.core.native.NativeReference;
import sunaba.Material;

class MeshLoader extends Behavior {
	private var _meshData: MeshData = null;

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

		if (_meshData == null)
			return;

		var arrayMesh = new NativeReference("ArrayMesh");

		for (blendShapeName in _meshData.blendShapeNames) {
			var addBlendShapeArgs = new ArrayList();
			addBlendShapeArgs.append(blendShapeName);
			arrayMesh.call("add_blend_shape", addBlendShapeArgs);
		}

		for (i in 0..._meshData.surfaces.size()) {
			var surfaceVariant = _meshData.surfaces.get(i);
			var surface: ArrayList = surfaceVariant;

			if (surface.size() == 0) {
				continue;
			}

			var addSurfaceFromArraysArgs = new ArrayList();
			addSurfaceFromArraysArgs.append(meshData.surfacePrimitiveTypes.get(i));
			addSurfaceFromArraysArgs.append(surface);
			var blendShapes = _meshData.blendShapesPerSurface.get(i);
			if (blendShapes.getType() == VariantType.arrayList) {
				addSurfaceFromArraysArgs.append(blendShapes);
			}
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

	public override function getData():Dictionary {
		var data = super.getData();

		data.set("_meshData", _meshData.getData());

		return data;
	}

	public override function setData(data:Dictionary) {
		super.setData(data);

		var newMeshData = new MeshData();
		newMeshData.io	= entity.io;
		newMeshData.setData(data.get("_meshData").toDictionary());
		setMeshData(newMeshData);
	}

	public override function onStart() {
		setMeshData(_meshData);
	}

	public override function onEnd() {
		var meshDisplay: MeshDisplay = getComponent(MeshDisplay);
		meshDisplay.setMesh(null);
	}
}
