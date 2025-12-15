package sunaba.spatial.mesh;

import sunaba.core.Dictionary;
import sunaba.core.native.NativeReference;

class CylinderMesh extends PrimitiveMesh {
    public var bottomRadius(get, set): Float;
    function get_bottomRadius(): Float {
        return res.native.get("bottom_radius");
    }
    function set_bottomRadius(value: Float): Float {
        res.native.set("bottom_radius", value);
        return value;
    }

    public var capBottom(get, set): Bool;
    function get_capBottom(): Bool {
        return res.native.get("cap_bottom");
    }
    function set_capBottom(value: Bool): Bool {
        res.native.set("cap_bottom", value);
        return value;
    }

    public var capTop(get, set): Bool;
    function get_capTop(): Bool {
        return res.native.get("cap_top");
    }
    function set_capTop(value: Bool): Bool {
        res.native.set("cap_top", value);
        return value;
    }

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

    public var rings(get, set): Int;
	function get_rings():Int {
		return res.native.get("rings");
	}
	function set_rings(value:Int):Int {
		res.native.set("rings", value);
		return value;
	}

    public var topRadius(get, set): Float;
    function get_topRadius(): Float {
        return res.native.get("top_radius");
    }
    function set_topRadius(value: Float): Float {
        res.native.set("top_radius", value);
        return value;
    }

    public override function getData():Dictionary {
        var data = super.getData();

        data.set("bottomRadius", bottomRadius);
        data.set("capBottom", capBottom);
        data.set("capTop", capTop);
        data.set("height", height);
        data.set("radialSegments", radialSegments);
        data.set("rings", rings);
        data.set("topRadius", topRadius);

        return data;
    }

    public override function setData(data:Dictionary) {
        super.setData(data);

        bottomRadius = data.get("bottomRadius");
        capBottom = data.get("capBottom");
        capTop = data.get("capTop");
        height = data.get("height");
        radialSegments = data.get("radialSegments");
        rings = data.get("rings");
        topRadius = data.get("topRadius");
    }

    public override function onInit() {
        res = new Resource(new NativeReference("CylinderMesh"));
        super.onInit();
    }
}