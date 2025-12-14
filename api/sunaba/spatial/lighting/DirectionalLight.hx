package sunaba.spatial.lighting;
import sunaba.core.Dictionary;
import sunaba.core.native.NativeObject;

class DirectionalLight extends ILight {
	public var directionalShadowBlendSplits(get, set): Bool;
	function get_directionalShadowBlendSplits():Bool {
		return node.native.get("directional_shadow_blend_splits");
	}
	function set_directionalShadowBlendSplits(value:Bool):Bool {
		node.native.set("directional_shadow_blend_splits", value);
		return value;
	}

	public var directionalShadowFadeStart(get, set): Float;
	function get_directionalShadowFadeStart():Float {
		return node.native.get("directional_shadow_fade_start");
	}
	function set_directionalShadowFadeStart(value:Float):Float {
		node.native.set("directional_shadow_fade_start", value);
		return value;
	}

	public var directionalShadowMaxDistance(get, set): Float;
	function get_directionalShadowMaxDistance():Float {
		return node.native.get("directional_shadow_max_distance");
	}
	function set_directionalShadowMaxDistance(value:Float):Float {
		node.native.set("directional_shadow_max_distance", value);
		return value;
	}

	public var directionalShadowMode(get, set): Int;
	function get_directionalShadowMode():Int {
		return node.native.get("directional_shadow_mode");
	}
	function set_directionalShadowMode(value:Int):Int {
		node.native.set("directional_shadow_mode", value);
		return value;
	}

	public var directionalShadowPancakeSize(get, set): Float;
	function get_directionalShadowPancakeSize():Float {
		return node.native.get("directional_shadow_pancake_size");
	}
	function set_directionalShadowPancakeSize(value:Float):Float {
		node.native.set("directional_shadow_pancake_size", value);
		return value;
	}

	public var directionalShadowSplit1(get, set): Float;
	function get_directionalShadowSplit1():Float {
		return node.native.get("directional_shadow_split_1");
	}
	function set_directionalShadowSplit1(value:Float):Float {
		node.native.set("directional_shadow_split_1", value);
		return value;
	}

	public var directionalShadowSplit2(get, set): Float;
	function get_directionalShadowSplit2():Float {
		return node.native.get("directional_shadow_split_2");
	}
	function set_directionalShadowSplit2(value:Float):Float {
		node.native.set("directional_shadow_split_2", value);
		return value;
	}

	public var directionalShadowSplit3(get, set): Float;
	function get_directionalShadowSplit3():Float {
		return node.native.get("directional_shadow_split_3");
	}
	function set_directionalShadowSplit3(value:Float):Float {
		node.native.set("directional_shadow_split_3", value);
		return value;
	}

	public var skyMode(get, set): Int;
	function get_skyMode():Int {
		return node.native.get("sky_mode");
	}
	function set_skyMode(value:Int):Int {
		node.native.set("sky_mode", value);
		return value;
	}

	public override function getData(): Dictionary {
		var data = super.getData();

		data.set("directionalShadowBlendSplits", directionalShadowBlendSplits);
		data.set("directionalShadowFadeStart", directionalShadowFadeStart);
		data.set("directionalShadowMaxDistance", directionalShadowMaxDistance);
		data.set("directionalShadowMode", directionalShadowMode);
		data.set("directionalShadowPancakeSize", directionalShadowPancakeSize);
		data.set("directionalShadowSplit1", directionalShadowSplit1);
		data.set("directionalShadowSplit2", directionalShadowSplit2);
		data.set("directionalShadowSplit3", directionalShadowSplit3);
		data.set("skyMode", skyMode);

		return data;
	}

	public override function setData(data: Dictionary) {
		super.setData(data);

		directionalShadowBlendSplits = data.get("directionalShadowBlendSplits");
		directionalShadowFadeStart = data.get("directionalShadowFadeStart");
		directionalShadowMaxDistance = data.get("directionalShadowMaxDistance");
		directionalShadowMode = data.get("directionalShadowMode");
		directionalShadowPancakeSize = data.get("directionalShadowPancakeSize");
		directionalShadowSplit1 = data.get("directionalShadowSplit1");
		directionalShadowSplit2 = data.get("directionalShadowSplit2");
		directionalShadowSplit3 = data.get("directionalShadowSplit3");
		skyMode = data.get("skyMode");
	}

	public override function onInit() {
		super.onInit();
		node = new Node(new NativeObject("DirectionalLight3D"));
		node.name = "DirectionalLight";

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
