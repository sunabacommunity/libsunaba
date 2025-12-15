package sunaba.spatial.physics;

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

	public override function getData():Dictionary {
		var data = super.getData();

		data.set("customSolverBias", customSolverBias);
		data.set("margin", margin);

		return data;
	}

	public override function setData(data:Dictionary) {
		super.setData(data);

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
