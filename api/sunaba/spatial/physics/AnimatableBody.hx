package sunaba.spatial.physics;

import sunaba.core.Dictionary;
import sunaba.core.native.NativeObject;

class AnimatableBody extends StaticBody {
    public var syncToPhysics(get, set): Bool;
    function get_syncToPhysics(): Bool {
        return node.native.get("sync_to_physics");
    }
    function set_syncToPhysics(value: Bool): Bool {
        node.native.set("sync_to_physics", value);
        return value;
    }

    public override function getData():Dictionary {
        var data = super.getData();

        data.set("syncToPhysics", syncToPhysics);

        return data;
    }

    public override function setData(data:Dictionary) {
        super.setData(data);

        syncToPhysics = data.get("syncToPhysics");
    }

    public override function onInit() {
        editorIconPath = "assets://FugueIcons/icons/building.png";

        node = new Node(new NativeObject("AnimatableBody3D"));
		node.name = "AnimatableBody";

		var transform: SpatialTransform = getComponent(SpatialTransform);
		if (transform != null) {
			transform.node = node;
		}
    }
}