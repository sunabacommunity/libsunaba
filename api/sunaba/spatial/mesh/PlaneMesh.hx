package sunaba.spatial.mesh;

import sunaba.core.Dictionary;
import sunaba.core.Vector2;
import sunaba.core.Vector3;
import sunaba.core.native.NativeReference;

class PlaneMesh extends PrimitiveMesh {
    public var centerOffset(get, set): Vector3;
    function get_centerOffset():Vector3 {
        return res.native.get("center_offset");
    }
    function set_centerOffset(value:Vector3):Vector3 {
        res.native.set("center_offset", value);
        return value;
    }

    public var orientation(get, set): Int;
    function get_orientation():Int {
        return res.native.get("orientation");
    }
    function set_orientation(value:Int):Int {
        res.native.set("orientation", value);
        return value;
    }

    public var size(get, set): Vector2;
    function get_size():Vector2 {
        return res.native.get("size");
    }
    function set_size(value:Vector2):Vector2 {
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

    public override function getData():Dictionary {
        var data = super.getData();

        data.set("centerOffset", DataUtils.varToDict(centerOffset));
        data.set("orientation", orientation);
        data.set("size", DataUtils.varToDict(size));
        data.set("subdivideDepth", subdivideDepth);
        data.set("subdivideWidth", subdivideWidth);

        return data;
    }

    public override function setData(data:Dictionary) {
        super.setData(data);

        centerOffset = DataUtils.dictToVar(data.get("centerOffset"));
        orientation = data.get("orientation");
        size = DataUtils.dictToVar(data.get("size"));
        subdivideDepth = data.get("subdivideDepth");
        subdivideWidth = data.get("subdivideWidth");
    }

    public override function onInit() {
        res = new Resource(new NativeReference("PlaneMesh"));
        super.onInit();
    }
}