package sunaba.spatial.mesh;
import sunaba.core.AABB;
import sunaba.core.Dictionary;

class PrimitiveMesh extends Behavior {
	public var res: Resource;

	public var addUv2(get, set): Bool;
	function get_addUv2():Bool {
		return res.native.get("add_uv2");
	}
	function set_addUv2(value:Bool):Bool {
		res.native.set("add_uv2", value);
		return value;
	}

	public var customAabb(get, set): AABB;
	function get_customAabb():AABB {
		return res.native.get("custom_aabb");
	}
	function set_customAabb(value:AABB):AABB {
		res.native.set("custom_aabb", value);
		return value;
	}

	public var flipFaces(get, set): Bool;
	function get_flipFaces():Bool {
		return res.native.get("flip_faces");
	}
	function set_flipFaces(value:Bool):Bool {
		res.native.set("flip_faces", value);
		return value;
	}

	public var material(get, set): Material;
	function get_material():Material {
		return new Material(res.native.get("material"));
	}
	function set_material(value:Material):Material {
		res.native.set("material", value.native);
		return value;
	}

	public var uv2Padding(get, set): Float;
	function get_uv2Padding():Float {
		return res.native.get("uv2_padding");
	}
	function set_uv2Padding(value:Float):Float {
		res.native.set("uv2_padding", value);
		return value;
	}

	public override function getData(): Dictionary {
		var data = new Dictionary();

		data.set("addUv2", addUv2);
		data.set("customAabb", DataUtils.varToDict(customAabb));
		data.set("flipFaces", flipFaces);
		data.set("material", DataUtils.varToDict(material));
		data.set("uv2Padding", uv2Padding);

		return data;
	}

	public override function setData(data: Dictionary) {
		addUv2 = data.get("addUv2");
		customAabb = DataUtils.dictToVar(data.get("customAabb"));
		flipFaces = data.get("flipFaces");
		material = new Material(DataUtils.dictToVar(data.get("material")));
	}

	public override function onStart() {
		var meshDisplay: MeshDisplay = getComponent(MeshDisplay);
		meshDisplay.setMesh(res);
	}

	public override function onEnd() {
		var meshDisplay: MeshDisplay = getComponent(MeshDisplay);
		meshDisplay.setMesh(null);
	}
}
