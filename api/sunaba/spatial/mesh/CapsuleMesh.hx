package sunaba.spatial.mesh;

import sunaba.core.Dictionary;
import sunaba.core.native.NativeReference;

class CapsuleMesh extends PrimitiveMesh {
	public var height(get, set): Float;
	function get_height():Float {
		return res.native.get("height");
	}
	function set_height(value:Float):Float {
		res.native.set("height", value);
		return value;
	}

	public var radialSegments(get, set): Int;
	function get_radialSegments():Int {
		return res.native.get("radial_segments");
	}
	function set_radialSegments(value:Int):Int {
		res.native.set("radial_segments", value);
		return value;
	}

	public var radius(get, set): Float;
	function get_radius():Float {
		return res.native.get("radius");
	}
	function set_radius(value:Float):Float {
		res.native.set("radius", value);
		return value;
	}

	public var rings(get, set): Int;
	function get_rings():Int {
		return res.native.get("rings");
	}
	function set_rings(value:Int):Int {
		res.native.set("rings", value);
		return value;
	}

    public override function getData():Dictionary {
        var data = super.getData();

        data.set("height", height);
        data.set("radialSegments", radialSegments);
        data.set("radius", radius);
        data.set("rings", rings);

        return data;
    }

    public override function setData(data:Dictionary) {
        super.setData(data);

        height = data.get("height");
        radialSegments = data.get("radialSegments");
        radius = data.get("radius");
        rings = data.get("rings");
    }

	public override function onInit() {
		res = new Resource(new NativeReference("CapsuleMesh"));
		super.onInit();
	}
}
