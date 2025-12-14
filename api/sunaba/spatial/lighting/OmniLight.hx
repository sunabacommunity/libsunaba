package sunaba.spatial.lighting;

import sunaba.core.Dictionary;
import sunaba.core.native.NativeObject;

class OmniLight extends ILight {
	public var omniAttenuation(get, set): Float;
	function get_omniAttenuation():Float {
		return node.native.get("omni_attenuation");
	}
	function set_omniAttenuation(value:Float):Float {
		node.native.set("omni_attenuation", value);
		return value;
	}

	public var omniRange(get, set): Float;
	function get_omniRange():Float {
		return node.native.get("omni_range");
	}
	function set_omniRange(value:Float):Float {
		node.native.set("omni_range", value);
		return value;
	}

	public var omniShadowMode(get, set): Int;
	function get_omniShadowMode():Int {
		return node.native.get("omni_shadow_mode");
	}
	function set_omniShadowMode(value:Int):Int {
		node.native.set("omni_shadow_mode", value);
		return value;
	}

	public override function getData(): Dictionary {
		var data = super.getData();

		data.set("omniAttenuation", omniAttenuation);
		data.set("omniRange", omniRange);
		data.set("omniShadowMode", omniShadowMode);

		return data;
	}

	public override function setData(data: Dictionary) {
		super.setData(data);

		omniAttenuation = data.get("omniAttenuation");
		omniRange = data.get("omniRange");
		omniShadowMode = data.get("omniShadowMode");
	}

	public override function onInit() {
		super.onInit();
		node = new Node(new NativeObject("OmniLight3D"));
		node.name = "OmniLight";

		var transform: SpatialTransform = getComponent(SpatialTransform);
		if (transform != null) {
			if (transform.node != null) {
				if (!transform.node.isNull()) {
					if (!transform.node.native.isNull()) {
						transform.node.addChild(node);
					}
				}
			}
		}
	}
}
