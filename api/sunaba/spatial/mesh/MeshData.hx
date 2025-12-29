package sunaba.spatial.mesh;
import sunaba.core.Dictionary;
import sunaba.core.ArrayList;
import sunaba.core.StringArray;

class MeshData extends ScriptableObject {
	public var surfaceNames: Array<String> = new Array();
	public var surfaces: ArrayList = new ArrayList();
	public var surfacePrimitiveTypes: ArrayList = new ArrayList();
	public var surfaceMaterials: ArrayList = new ArrayList();
	public var blendShapesPerSurface: ArrayList = new ArrayList();
	public var blendShapeMode: Int = -1;
	public var blendShapeNames: Array<String> = new Array();

	public static function fromImporterMesh(importerMesh: ImporterMesh) {
		var meshData = new MeshData();
		for (i in 0...importerMesh.getSurfaceCount()) {
			var surfaceArrays = importerMesh.getSurfaceArrays(i);
			meshData.surfaces.append(surfaceArrays);

			var surfacePrimitiveType: Int = importerMesh.getSurfacePrimitiveType(i);
			meshData.surfacePrimitiveTypes.append(surfacePrimitiveType);

			var surfaceMaterial = importerMesh.getSurfaceMaterial(i);
			meshData.surfaceMaterials.append(surfaceMaterial);

			var surfaceName = importerMesh.getSurfaceName(i);
			meshData.surfaceNames.push(surfaceName);

			var surfaceBlendShapes = new ArrayList();
			for (j in 0...importerMesh.getBlendShapeCount()) {
				var surfaceBlendShapeArray = importerMesh.getSurfaceBlendShapeArrays(i, j);
				surfaceBlendShapes.append(surfaceBlendShapeArray);
			}

			meshData.blendShapesPerSurface.append(surfaceBlendShapes);
		}

		var blendShapeMode = importerMesh.getBlendShapeMode();
		meshData.blendShapeMode = blendShapeMode;

		for (i in 0...importerMesh.getBlendShapeCount()) {
			var blendShapeName = importerMesh.getBlendShapeName(i);
			meshData.blendShapeNames.push(blendShapeName);
		}

		return meshData;
	}

	public override function getData():Dictionary {
		var data = super.getData();

		data.set("surfaceNames", DataUtils.varToDict(StringArray.fromArray(surfaceNames)));
		data.set("surfaces", DataUtils.varToDict(surfaces));
		/*var backData = DataUtils.dictToVar(data.get("surfaces"));
		Sys.println(JSON.stringify(surfaces));
		Sys.println(JSON.stringify(backData));
		trace(JSON.stringify(surfaces) != JSON.stringify(backData));
		if (JSON.stringify(surfaces) != JSON.stringify(backData)) {
			throw "Fuck";
		}*/
		data.set("surfacePrimitiveTypes", DataUtils.varToDict(surfacePrimitiveTypes));
		data.set("surfaceMaterials", DataUtils.varToDict(surfaceMaterials));
		data.set("blendShapesPerSurface", DataUtils.varToDict(blendShapesPerSurface));
		data.set("blendShapeMode", blendShapeMode);
		data.set("blendShapeNames", DataUtils.varToDict(StringArray.fromArray(blendShapeNames)));

		return data;
	}

	public override function setData(data:Dictionary) {
		super.setData(data);

		surfaceNames = DataUtils.dictToVar(data.get("surfaceNames")).toStringArray();
		surfaces = DataUtils.dictToVar(data.get("surfaces"));
		surfacePrimitiveTypes = DataUtils.dictToVar(data.get("surfacePrimitiveTypes"));
		surfaceMaterials = DataUtils.dictToVar(data.get("surfaceMaterials"), io);
		blendShapesPerSurface = DataUtils.dictToVar(data.get("blendShapesPerSurface"));
		blendShapeMode = data.get("blendShapeMode");
		blendShapeNames = DataUtils.dictToVar(data.get("blendShapeNames")).toStringArray();
	}
}
