package sunaba.spatial.mesh;
import sunaba.core.Dictionary;
import sunaba.core.ArrayList;
import sunaba.core.StringArray;

class MeshData extends ScriptableObject {
	public var surfaceNames: Array<String> = new Array();
	public var surfaces: ArrayList = new ArrayList();
	public var surfaceMaterials: ArrayList = new ArrayList();

	public static function fromImporterMesh(importerMesh: ImporterMesh) {
		var meshData = new MeshData();
		for (i in 0...importerMesh.getSurfaceCount()) {
			var surfaceArrays = importerMesh.getSurfaceArrays(i);
			meshData.surfaces.append(surfaceArrays);

			var surfaceMaterial = importerMesh.getSurfaceMaterial(i);
			meshData.surfaceMaterials.append(surfaceMaterial);

			var surfaceName = importerMesh.getSurfaceName(i);
			meshData.surfaceNames.push(surfaceName);
		}
	}

	public override function getData():Dictionary {
		var data = super.getData();

		data.set("surfaceNames", DataUtils.varToDict(StringArray.fromArray(surfaceNames)));
		data.set("surfaces", DataUtils.varToDict(surfaces));
		data.set("surfaceMaterials", DataUtils.varToDict(surfaceMaterials));

		return data;
	}

	public override function setData(data:Dictionary) {
		super.setData(data);

		surfaceNames = DataUtils.dictToVar(data.get("surfaceNames")).toStringArray();
		surfaces = DataUtils.dictToVar(data.get("surfaces"));
		surfaceMaterials = DataUtils.dictToVar(data.get("surfaceMaterials"));
	}
}
