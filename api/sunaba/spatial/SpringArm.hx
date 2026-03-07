package sunaba.spatial;
import sunaba.core.ArrayList;
import sunaba.core.native.NativeObject;
import sunaba.core.Dictionary;

class SpringArm extends Behavior {
	public var node: Node;

	public var collisionMask(get, set): Int;
	function get_collisionMask():Int {
		return node.native.get("collision_mask");
	}
	function set_collisionMask(value:Int):Int {
		node.native.set("collision_mask", value);
		return value;
	}

	public var margin(get, set): Float;
	function get_margin():Float {
		return node.native.get("margin");
	}
	function set_margin(value:Float):Float {
		node.native.set("margin", value);
		return value;
	}

	public var springLength(get, set): Float;
	function get_springLength():Float {
		return node.native.get("spring_length");
	}
	function set_springLength(value:Float):Float {
		node.native.set("spring_length", value);
		return value;
	}

	public function getHitLength(): Float {
		return node.native.call("get_hit_length", new ArrayList());
	}

	public override function getData(): Dictionary {
		var data = super.getData();

		data.set("collisionMask", collisionMask);
		data.set("margin", margin);
		data.set("springLength", springLength);

		return data;
	}

	public override function setData(data: Dictionary) {
		super.setData(data);

		collisionMask = data.get("collisionMask");
		margin = data.get("margin");
		springLength = data.get("springLength");
	}

	public override function onInit() {
		node = new Node(new NativeObject("SpringArm3D"));

		var transform = getComponent(SpatialTransform);
		if (transform != null) {
			transform.node = node;
		}
	}

	public override function onStart() {
		if (node.getParent().isNull()) {
			var transform = getComponent(SpatialTransform);
			if (transform != null) {
				transform.node = node;
			}
		}
	}
}
