package sunaba.spatial;

class IGeometryInstance extends IVisualInstance {
	public var castShadow(get, set): Int;
	function get_castShadow():Int {
		return node.native.get("cast_shadow");
	}
	function set_castShadow(value:Int):Int {
		node.native.set("cast_shadow", value);
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
}
