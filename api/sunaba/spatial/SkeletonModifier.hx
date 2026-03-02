package sunaba.spatial;
import sunaba.core.Dictionary;

class SkeletonModifier extends Behavior {
	public var node: Node;

	public var active(get, set): Bool;
	function get_active():Bool {
		return node.native.get("active");
	}
	function set_active(value:Bool):Bool {
		node.native.set("active", value);
		return value;
	}

	public var influence(get, set): Bool;
	function get_influence():Bool {
		return node.native.get("influence");
	}
	function set_influence(value:Bool):Bool {
		node.native.set("influence", value);
		return value;
	}

	public override function getData(): Dictionary {
		var data = super.getData();

		data.set("active", active);
		data.set("influence", influence);

		return data;
	}

	public override function setData(data: Dictionary) {
		super.setData(data);

		active = data.get("active");
		influence = data.get("influence");
	}
}
