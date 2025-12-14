package sunaba.spatial.lighting;

import sunaba.core.native.NativeObject;
import sunaba.core.Dictionary;

class SpotLight extends ILight {
	public var spotAngle(get, set): Float;
	function get_spotAngle():Float {
		return node.native.get("spot_angle");
	}
	function set_spotAngle(value:Float):Float {
		node.native.set("spot_angle", value);
		return value;
	}

	public var spotAngleAttenuation(get, set): Float;
	function get_spotAngleAttenuation():Float {
		return node.native.get("spot_angle_attenuation");
	}
	function set_spotAngleAttenuation(value:Float):Float {
		node.native.set("spot_angle_attenuation", value);
		return value;
	}

	public var spotAttenuation(get, set): Float;
	function get_spotAttenuation():Float {
		return node.native.get("spot_attenuation");
	}
	function set_spotAttenuation(value:Float):Float {
		node.native.set("spot_attenuation", value);
		return value;
	}

	public var spotRange(get, set): Float;
	function get_spotRange():Float {
		return node.native.get("spot_range");
	}
	function set_spotRange(value:Float):Float {
		node.native.set("spot_range", value);
		return value;
	}

	public override function getData(): Dictionary {
		var data = super.getData();

		data.set("spotAngle", spotAngle);
		data.set("spotAngleAttenuation", spotAngleAttenuation);
		data.set("spotAttenuation", spotAttenuation);
		data.set("spotRange", spotRange);

		return data;
	}

	public override function setData(data: Dictionary) {
		super.setData(data);

		spotAngle = data.get("spotAngle");
		spotAngleAttenuation = data.get("spotAngleAttenuation");
		spotAttenuation = data.get("spotAttenuation");
		spotRange = data.get("spotRange");
	}

	public override function onInit() {
		super.onInit();
		node = new Node(new NativeObject("SpotLight3D"));
		node.name = "SpotLight";

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
