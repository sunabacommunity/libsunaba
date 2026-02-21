package sunaba.spatial;
import sunaba.core.Dictionary;
import sunaba.core.native.NativeObject;

class BoneAttachment extends Behavior {
    public var node: Node;


	public var boneIdx(get, set): Int;
	function get_boneIdx():Int {
		return node.native.get("bone_idx");
	}
	function set_boneIdx(value:Int):Int {
		node.native.set("bone_idx", value);
		return value;
	}

	public var boneName(get, set): String;
	function get_boneName():String {
		return node.native.get("bone_name");
	}
	function set_boneName(value:String):String {
		node.native.set("bone_name", value);
		return value;
	}

	public var externalSkeleton(get, set): String;
	function get_externalSkeleton():String {
		return node.native.get("external_skeleton");
	}
	function set_externalSkeleton(value:String):String {
		node.native.set("external_skeleton", value);
		return value;
	}

	public var overridePose(get, set): Bool;
	function get_overridePose():Bool {
		return node.native.get("override_pose");
	}
	function set_overridePose(value:Bool):Bool {
		node.native.set("override_pose", value);
		return value;
	}

	public var useExternalSkeleton(get, set): Bool;
	function get_useExternalSkeleton():Bool {
		return node.native.get("use_external_skeleton");
	}
	function set_useExternalSkeleton(value:Bool):Bool {
		node.native.set("use_external_skeleton", value);
		return value;
	}

	public override function getData():Dictionary {
		var data = super.getData();

		data.set("boneName", boneName);
		data.set("boneIdx", boneIdx);
		data.set("overridePose", overridePose);
		data.set("useExternalSkeleton", useExternalSkeleton);
		data.set("externalSkeleton", externalSkeleton);

		return data;
	}

	public override function setData(data:Dictionary) {
		super.setData(data);

		boneName = data.get("boneName");
		boneIdx = data.get("boneIdx");
		overridePose = data.get("overridePose");
		useExternalSkeleton = data.get("useExternalSkeleton");
		externalSkeleton = data.get("externalSkeleton");
	}

	public override function onInit() {
		node = new Node(new NativeObject("BoneAttachment3D"));

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
