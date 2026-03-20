package sunaba.spatial.physics;

import sunaba.core.Vector3;
import sunaba.core.native.NativeObject;
import sunaba.core.Dictionary;
import sunaba.core.native.NativeReference;

abstract class ICollisionShape extends Behavior {
	public var native: NativeReference;

	public var node: Node;

	public var customSolverBias(get, set): Float;
	function get_customSolverBias():Float {
		return native.get("custom_solver_bias");
	}
	function set_customSolverBias(value:Float):Float {
		native.set("custom_solver_bias", value);
		return value;
	}

	public var margin(get, set): Float;
	function get_margin():Float {
		return native.get("margin");
	}
	function set_margin(value:Float):Float {
		native.set("margin", value);
		return value;
	}

	public var position(get, set): Vector3;
	function get_position():Vector3 {
		return node.native.get("position");
	}
	function set_position(value:Vector3):Vector3 {
		node.native.set("position", value);
		return value;
	}

	public var rotationDegrees(get, set): Vector3;
	function get_rotationDegrees():Vector3 {
		return node.native.get("rotation_degrees");
	}
	function set_rotationDegrees(value:Vector3):Vector3 {
		node.native.set("rotation_degrees", value);
		return value;
	}

	public var rotation(get, set): Vector3;
	function get_rotation():Vector3 {
		return node.native.get("rotation");
	}
	function set_rotation(value:Vector3):Vector3 {
		node.native.set("rotation", value);
		return value;
	}

	public override function getData():Dictionary {
		var data = super.getData();

		data.set("position", DataUtils.varToDict(position));
		data.set("rotation", DataUtils.varToDict(rotation));
		data.set("rotationDegrees", DataUtils.varToDict(rotationDegrees));
		data.set("customSolverBias", customSolverBias);
		data.set("margin", margin);

		return data;
	}

	public override function setData(data:Dictionary) {
		super.setData(data);

		if (data.has("position"))
			position = DataUtils.dictToVar(data.get("position"));
		if (data.has("rotation"))
			rotation = DataUtils.dictToVar(data.get("rotation"));
		if (data.has("rotationDegrees"))
			rotationDegrees = DataUtils.dictToVar(data.get("rotationDegrees"));
		customSolverBias = data.get("customSolverBias");
		margin = data.get("margin");
	}

	public override function onInit() {
		var collisionObject: ICollisionObject = null;
		var characterBody: CharacterBody = getComponent(CharacterBody);
		if (characterBody != null) {
			collisionObject = characterBody;
		}
		else {
			var rigidBody: RigidBody = getComponent(RigidBody);
			if (rigidBody != null) {
				collisionObject = rigidBody;
			}
			else {
				var animatableBody: AnimatableBody = getComponent(AnimatableBody);
				if (animatableBody != null) {
					collisionObject = animatableBody;
				}
				else {
					var staticBody: StaticBody = getComponent(StaticBody);
					if (staticBody != null) {
						collisionObject = staticBody;
					}
				}
			}
		}

		if (collisionObject != null) {
			node = new Node(new NativeObject("CollisionShape3D"));
			node.name = "CollisionShape";

			collisionObject.node.addChild(node);
		}	
	}

	public inline function setShape() {
		node.native.set("shape", native);
	}
}
