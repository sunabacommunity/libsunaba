package sunaba.spatial.physics;

import sunaba.core.native.NativeReference;
import sunaba.core.Dictionary;

class CapsuleShape extends ICollisionShape {
    public var height(get, set): Float;
    function get_height(): Float {
        return native.get("height");
    }
    function set_height(value: Float): Float {
        native.set("height", value);
        return value;
    }

    public var midHeight(get, set): Float;
    function get_midHeight(): Float {
        return native.get("mid_height");
    }
    function set_midHeight(value: Float): Float {
        native.set("mid_height", value);
        return value;
    }

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

        data.set("height", height);
        data.set("radius", radius);

        return data;
    }

    public override function setData(data:Dictionary) {
        super.setData(data);

        height = data.get("height");
        radius = data.get("radius");
    }

    public override function onInit() {
        super.onInit();

        native = new NativeReference("CapsuleShape3D");

        setShape();
    }
}