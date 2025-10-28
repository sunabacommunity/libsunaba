package sunaba.spatial;
import sunaba.core.Dictionary;
import sunaba.core.AABB;

class IGeometryInstance extends IVisualInstance {
	public var castShadow(get, set): Int;
	function get_castShadow():Int {
		return node.native.get("cast_shadow");
	}
	function set_castShadow(value:Int):Int {
		node.native.set("cast_shadow", value);
		return value;
	}

	public var customAabb(get, set): AABB;
	function get_customAabb():AABB {
		return node.native.get("custom_aabb");
	}
	function set_customAabb(value:AABB):AABB {
		node.native.set("custom_aabb", value);
		return value;
	}

	public var extraCullMargin(get, set): Float;
	function get_extraCullMargin():Float {
		return node.native.get("extra_cull_margin");
	}
	function set_extraCullMargin(value:Float):Float {
		node.native.set("extra_cull_margin", value);
		return value;
	}

	public var ignoreOcclusionCulling(get, set): Bool;
	function get_ignoreOcclusionCulling():Bool {
		return node.native.get("ignore_occlusion_culling");
	}
	function set_ignoreOcclusionCulling(value:Bool):Bool {
		node.native.set("ignore_occlusion_culling", value);
		return value;
	}

	public var giMode(get, set): Int;
	function get_giMode():Int {
		return node.native.get("gi_mode");
	}
	function set_giMode(value:Int):Int {
		node.native.set("gi_mode", value);
		return value;
	}

	public var lightmapScale(get, set): Int;
	function get_lightmapScale():Int {
		return node.native.get("lightmap_scale");
	}
	function set_lightmapScale(value:Int):Int {
		node.native.set("lightmap_scale", value);
		return value;
	}

	public var lightmapTexelScale(get, set): Float;
	function get_lightmapTexelScale():Float {
		return node.native.get("lightmap_texel_scale");
	}
	function set_lightmapTexelScale(value:Float):Float {
		node.native.set("lightmap_texel_scale", value);
		return value;
	}

	public var lodBias(get, set): Float;
	function get_lodBias():Float {
		return node.native.get("lod_bias");
	}
	function set_lodBias(value:Float):Float {
		node.native.set("lod_bias", value);
		return value;
	}

	public var transparancy(get, set): Float;
	function get_transparancy():Float {
		return node.native.get("transparancy");
	}
	function set_transparancy(value:Float):Float {
		node.native.set("transparancy", value);
		return value;
	}

	public var visibilityRangeBegin(get, set): Float;
	function get_visibilityRangeBegin():Float {
		return node.native.get("visibility_range_begin");
	}
	function set_visibilityRangeBegin(value:Float):Float {
		node.native.set("visibility_range_begin", value);
		return value;
	}

	public var visibilityRangeEnd(get, set): Float;
	function get_visibilityRangeEnd():Float {
		return node.native.get("visibility_range_end");
	}
	function set_visibilityRangeEnd(value:Float):Float {
		node.native.set("visibility_range_end", value);
		return value;
	}

	public var visibilityRangeBeginMargin(get, set): Float;
	function get_visibilityRangeBeginMargin():Float {
		return node.native.get("visibility_range_begin_margin");
	}
	function set_visibilityRangeBeginMargin(value:Float):Float {
		node.native.set("visibility_range_begin_margin", value);
		return value;
	}

	public var visibilityRangeEndMargin(get, set): Float;
	function get_visibilityRangeEndMargin():Float {
		return node.native.get("visibility_range_end_margin");
	}
	function set_visibilityRangeEndMargin(value:Float):Float {
		node.native.set("visibility_range_end_margin", value);
		return value;
	}

	public var visibilityRangeFadeMode(get, set): Float;
	function get_visibilityRangeFadeMode():Float {
		return node.native.get("visibility_range_fade_mode");
	}
	function set_visibilityRangeFadeMode(value:Float):Float {
		node.native.set("visibility_range_fade_mode", value);
		return value;
	}

	public override function getData(): Dictionary {
		var data = super.getData();

		data.set("castShadow", castShadow);
		data.set("customAabb", customAabb);
		data.set("extraCullMargin", extraCullMargin);
		data.set("giMode", giMode);
		data.set("ignoreOcclusionCulling", ignoreOcclusionCulling);
		data.set("lightmapScale", lightmapScale);
		data.set("lightmapTexelScale", lightmapTexelScale);
		data.set("lodBias", lodBias);
		data.set("transparancy", transparancy);
		data.set("visibilityRangeBegin", visibilityRangeBegin);
		data.set("visibilityRangeBeginMargin", visibilityRangeBeginMargin);
		data.set("visibilityRangeEnd", visibilityRangeEnd);
		data.set("visibilityRangeEndMargin", visibilityRangeEndMargin);
		data.set("visibilityRangeFadeMode", visibilityRangeFadeMode);

		return data;
	}

	public override function setData(data: Dictionary) {
		castShadow = data.get("castShadow");
		customAabb = data.get("customAabb");
		extraCullMargin = data.get("extraCullMargin");
		giMode = data.get("giMode");
		ignoreOcclusionCulling = data.get("ignoreOcclusionCulling");
		lightmapScale = data.get("lightmapScale");
		lightmapTexelScale = data.get("lightmapTexelScale");
		lodBias = data.get("lodBias");
		transparancy = data.get("transparancy");
		visibilityRangeBegin = data.get("visibilityRangeBegin");
		visibilityRangeBeginMargin = data.get("visibilityRangeBeginMargin");
		visibilityRangeEnd = data.get("visibilityRangeEnd");
		visibilityRangeEndMargin = data.get("visibilityRangeEndMargin");
		visibilityRangeFadeMode = data.get("visibilityRangeFadeMode");
		super.setData(data);
	}
}
