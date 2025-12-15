package sunaba.spatial.physics;

import sunaba.core.native.NativeReference;
import sunaba.core.Dictionary;
import sunaba.core.Vector3;

class BoxShape extends ICollisionShape {
    public var size(get, set): Vector3;
    function get_size(): Vector3 {
        return native.get("size");
    }
    function set_size(value: Vector3): Vector3 {
        native.set("size", value);
        return value;
    }

    public override function getData():Dictionary {
        var data = super.getData();

        data.set("size", DataUtils.varToDict(size));

        return data;
    }

    public override function setData(data:Dictionary) {
        super.setData(data);

        size = DataUtils.dictToVar(data.get("size"));
    }

    public override function onInit() {
        super.onInit();

        native = new NativeReference("BoxShape3D");

        setShape();
    }
}