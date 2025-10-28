package sunaba.spatial;
import sunaba.core.ArrayList;
import sunaba.core.Dictionary;

class IVisualInstance extends Behavior {
	public var node: Node;

	public var layerMask(get, set): Int;
	function get_layerMask():Int {
		return node.native.get("layer_mask");
	}
	function set_layerMask(value:Int):Int {
		node.native.set("layer_mask", value);
		return value;
	}

	public var sortingOffset(get, set): Float;
	function get_sortingOffset():Float {
		return node.native.get("sorting_offset");
	}
	function set_sortingOffset(value:Float):Float {
		node.native.set("sorting_offset", value);
		return value;
	}

	public var sortingUseAabbCenter(get, set): Bool;
	function get_sortingUseAabbCenter():Bool {
		return node.native.get("sorting_use_aabb_center");
	}
	function set_sortingUseAabbCenter(value:Bool):Bool {
		node.native.set("sorting_use_aabb_center", value);
		return value;
	}

	public function getLayerMaskValue(layer: Int): Bool {
		var args = new ArrayList();
		args.append(layer);
		return node.native.call("get_layer_mask_value", args);
	}

	public function setLayerMaskValue(layer: Int, value: Bool): Void {
		var args = new ArrayList();
		args.append(layer);
		args.append(value);
		node.native.call("set_layer_mask_value", args);
	}

	public override function getData(): Dictionary {
		var data = new Dictionary();
		data.set("layerMask", layerMask);
		data.set("sortingOffset", sortingOffset);
		data.set("sortingUseAabbCenter", sortingUseAabbCenter);
		return data;
	}

	public override function setData(data: Dictionary) {
		layerMask = data.get("layerMask");
		sortingOffset = data.get("sortingOffset");
		sortingUseAabbCenter = data.get("sortingUseAabbCenter");
	}
}
