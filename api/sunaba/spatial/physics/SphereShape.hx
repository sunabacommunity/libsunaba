package sunaba.spatial.physics;

import sunaba.core.native.NativeReference;
import sunaba.core.Dictionary;

class SphereShape extends ICollisionShape {
    public var radius(get, set): Float;
    function get_radius(): Float {
        return native.get("radius");
    }
    function set_radius(value: Float): Float {
        native.set("radius", value);
        return value;
    }

    public override function getData():Dictionary {
        var data = super.getData();

        data.set("radius", radius);

        return data;
    }

    public override function setData(data:Dictionary) {
        super.setData(data);

        radius = data.get("radius");
    }

    public override function onInit() {
        super.onInit();

        native = new NativeReference("SphereShape3D");

        setShape();
    }
}