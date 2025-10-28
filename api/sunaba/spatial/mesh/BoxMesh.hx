package sunaba.spatial.mesh;
import sunaba.core.Vector3;
import sunaba.core.native.NativeReference;
import sunaba.core.Dictionary;

class BoxMesh extends Behavior {
	var res: Resource;

	public var size(get, set): Vector3;
	function get_size():Vector3 {
		return res.native.get("size");
	}
	function set_size(value:Vector3):Vector3 {
		res.native.set("size", value);
		return value;
	}

	public var subdivideDepth(get, set): Int;
	function get_subdivideDepth():Int {
		return res.native.get("subdivide_depth");
	}
	function set_subdivideDepth(value:Int):Int {
		res.native.set("subdivide_depth", value);
		return value;
	}

	public var subdivideWidth(get, set): Int;
	function get_subdivideWidth():Int {
		return res.native.get("subdivide_width");
	}
	function set_subdivideWidth(value:Int):Int {
		res.native.set("subdivide_width", value);
		return value;
	}

	public var subdivideHeight(get, set): Int;
	function get_subdivideHeight():Int {
		return res.native.get("subdivide_height");
	}
	function set_subdivideHeight(value:Int):Int {
		res.native.set("subdivide_height", value);
		return value;
	}

	public override function onInit() {
		res = new Resource(new NativeReference("BoxMesh"));
		editorIconPath = "studio://icons/16/cushion.png";
	}

	public override function getData(): Dictionary {
		var data = new Dictionary();

		data.set("size", DataUtils.varToDict(size));
		data.set("subdivideDepth", subdivideDepth);
		data.set("subdivideHeight", subdivideHeight);
		data.set("subdivideWidth", subdivideWidth);

		return data;
	}

	public override function setData(data: Dictionary){
		size = DataUtils.dictToVar(data.get("size"));
		subdivideDepth = data.get("subdivideDepth");
		subdivideHeight = data.get("subdivideHeight");
		subdivideWidth = data.get("subdivideWidth");
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
