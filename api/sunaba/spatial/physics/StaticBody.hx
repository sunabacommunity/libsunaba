package sunaba.spatial.physics;

import sunaba.core.Dictionary;
import sunaba.core.Vector3;
import sunaba.core.native.NativeObject;

class StaticBody extends IPhysicsBody {
    public var constantAngularVelocity(get, set): Vector3;
    function get_constantAngularVelocity(): Vector3 {
        return node.native.get("constant_angular_velocity");
    }
    function set_constantAngularVelocity(value: Vector3): Vector3 {
        node.native.set("constant_angular_velocity", value);
        return value;
    }
    
    public var constantLinearVelocity(get, set): Vector3;
    function get_constantLinearVelocity(): Vector3 {
        return node.native.get("constant_linear_velocity");
    }
    function set_constantLinearVelocity(value: Vector3): Vector3 {
        node.native.set("constant_linear_velocity", value);
        return value;
    }

    public var physicsMaterialOverride(get, set): PhysicsMaterial;
    function get_physicsMaterialOverride(): PhysicsMaterial {
        return new PhysicsMaterial(node.native.get("physics_material_override"));
    }
    function set_physicsMaterialOverride(value: PhysicsMaterial): PhysicsMaterial {
        node.native.set("physics_material_override", value.native);
        return value;
    }

    public override function getData():Dictionary {
        var data = super.getData();

        data.set("constantAngularVelocity", DataUtils.varToDict(constantAngularVelocity));
        data.set("constantLinearVelocity", DataUtils.varToDict(constantLinearVelocity));
        data.set("physicsMaterialOverride", DataUtils.varToDict(physicsMaterialOverride.native));

        return data;
    }

    public override function setData(data:Dictionary) {
        super.setData(data);

        constantAngularVelocity = DataUtils.dictToVar(data.get("constantAngularVelocity"));
        constantLinearVelocity = DataUtils.dictToVar(data.get("constantLinearVelocity"));
        physicsMaterialOverride = new PhysicsMaterial(DataUtils.dictToVar(data.get("physicsMaterialOverride")));
    }

    public override function onStart() {
        editorIconPath = "assets://FugueIcons/icons/building.png";

        node = new Node(new NativeObject("StaticBody3D"));
		node.name = "StaticBody";

		var transform: SpatialTransform = getComponent(SpatialTransform);
		if (transform != null) {
			transform.node = node;
		}
    }
}