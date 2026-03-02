package sunaba.spatial;
import sunaba.core.ArrayList;
import sunaba.core.Dictionary;
import sunaba.core.native.NativeObject;

class RemoteTransform extends Behavior {
	public var node: Node;

	public var remotePath(get, set): String;
	function get_remotePath():String {
		return node.native.get("remote_path");
	}
	function set_remotePath(value:String):String {
		node.native.set("remote_path", value);
		return value;
	}

	public var updatePosition(get, set): Bool;
	function get_updatePosition():Bool {
		return node.native.get("update_position");
	}
	function set_updatePosition(value:Bool):Bool {
		node.native.set("update_position", value);
		return value;
	}

	public var updateRotation(get, set): Bool;
	function get_updateRotation():Bool {
		return node.native.get("update_rotation");
	}
	function set_updateRotation(value:Bool):Bool {
		node.native.set("update_rotation", value);
		return value;
	}

	public var updateScale(get, set): Bool;
	function get_updateScale():Bool {
		return node.native.get("update_scale");
	}
	function set_updateScale(value:Bool):Bool {
		node.native.set("update_scale", value);
		return value;
	}

	public var useGlobalCoordinates(get, set): Bool;
	function get_useGlobalCoordinates():Bool {
		return node.native.get("use_global_coordinates");
	}
	function set_useGlobalCoordinates(value:Bool):Bool {
		node.native.set("use_global_coordinates", value);
		return value;
	}

	public function forceUpdateCache() {
		node.native.call("force_update_cache", new ArrayList());
	}

	public override function getData(): Dictionary {
		var data = super.getData();

		data.set("remotePath", remotePath);
		data.set("updatePosition", updatePosition);
		data.set("updateRotation", updateRotation);
		data.set("updateScale", updateScale);
		data.set("useGlobalCoordinates", useGlobalCoordinates);

		return data;
	}

	public override function setData(data: Dictionary) {
		super.setData(data);

		remotePath = data.get("remotePath");
		updatePosition = data.get("updatePosition");
		updateRotation = data.get("updateRotation");
		updateScale = data.get("updateScale");
		useGlobalCoordinates = data.get("useGlobalCoordinates");
	}

	public override function onInit() {
		node = new Node(new NativeObject("RemoteTransform3D"));

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
