package sunaba.spatial;

class Map3D extends Behavior {
	public var node: Node;

	public function getTrigger(name: String): Null<Trigger> {
		var childNode = node.getNode(name);
		if (!childNode.isNull()) {
			if (childNode.native.isClass("Area3D")) {
				return new Trigger(scene, childNode.native);
			}
		}
		return null;
	}

	public function getAllTriggers(): Array<Trigger> {
		var triggers = new Array();
		for (i in 0...node.getChildCount()) {
			var childNode = node.getChild(i);
			if (childNode.native.isClass("Area3D")) {
				triggers.push(new Trigger(scene, childNode.native));
			}
		}
		return triggers;
	}

	public function getWater(name: String): Null<Water> {
		var childNode = node.getNode(name);
		if (!childNode.isNull()) {
			if (childNode.native.isClass("Area3D")) {
				if(childNode.native.get("isWater").getType() == 1) {
					return new Water(scene, childNode.native);
				}
			}
		}
		return null;
	}

	public function getAllWaterTriggers(): Array<Water> {
		var waterTriggers = new Array();
		for (i in 0...node.getChildCount()) {
			var childNode = node.getChild(i);
			if (childNode.native.isClass("Area3D")) {
				if(childNode.native.get("isWater").getType() == 1) {
					waterTriggers.push(new Water(scene, childNode.native));
				}
			}
		}
		return waterTriggers;
	}
}
