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

	public function getWater(name: String): Null<Water> {
		var childNode = node.getNode(name);
		if (!childNode.isNull()) {
			if (childNode.native.isClass("Area3D")) {
				return new Water(scene, childNode.native);
			}
		}
		return null;
	}
}
