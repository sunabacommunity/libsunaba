package sunaba.spatial.lighting;

import sunaba.spatial.IVisualInstance;
import sunaba.core.Color;
import sunaba.core.Dictionary;
import sunaba.core.ArrayList;

class ILight extends IVisualInstance {
	public var distanceFadeBegin(get, set): Float;
	function get_distanceFadeBegin():Float {
		return node.native.get("distance_fade_begin");
	}
	function set_distanceFadeBegin(value:Float):Float {
		node.native.set("distance_fade_begin", value);
		return value;
	}

	public var distanceFadeEnabled(get, set): Bool;
	function get_distanceFadeEnabled():Bool {
		return node.native.get("distance_fade_enabled");
	}
	function set_distanceFadeEnabled(value:Bool):Bool {
		node.native.set("distance_fade_enabled", value);
		return value;
	}

	public var distanceFadeLength(get, set): Float;
	function get_distanceFadeLength():Float {
		return node.native.get("distance_fade_length");
	}
	function set_distanceFadeLength(value:Float):Float {
		node.native.set("distance_fade_length", value);
		return value;
	}

	public var distanceFadeShadow(get, set): Float;
	function get_distanceFadeShadow():Float {
		return node.native.get("distance_fade_shadow");
	}
	function set_distanceFadeShadow(value:Float):Float {
		node.native.set("distance_fade_shadow", value);
		return value;
	}

	public var lightAngularDistance(get, set):Float;
	function get_lightAngularDistance():Float {
		return node.native.get("light_angular_distance");
	}
	function set_lightAngularDistance(value:Float):Float {
		node.native.set("light_angular_distance", value);
		return value;
	}

	public var lightBakeMode(get, set): Int;
	function get_lightBakeMode():Int {
		return node.native.get("light_bake_mode");
	}
	function set_lightBakeMode(value:Int):Int {
		node.native.set("light_bake_mode", value);
		return value;
	}

	public var lightColor(get, set): Color;
	function get_lightColor():Color {
		return node.native.get("light_color");
	}
	function set_lightColor(value:Color):Color {
		node.native.set("light_color", value);
		return value;
	}

	public var lightCullMask(get, set): Int;
	function get_lightCullMask():Int {
		return node.native.get("light_cull_mask");
	}
	function set_lightCullMask(value:Int):Int {
		node.native.set("light_cull_mask", value);
		return value;
	}

	public var lightEnergy(get, set): Float;
	function get_lightEnergy():Float {
		return node.native.get("light_energy");
	}
	function set_lightEnergy(value:Float):Float {
		node.native.set("light_energy", value);
		return value;
	}

	public var lightIndirectEnergy(get, set): Float;
	function get_lightIndirectEnergy():Float {
		return node.native.get("light_indirect_energy");
	}
	function set_lightIndirectEnergy(value:Float):Float {
		node.native.set("light_indirect_energy", value);
		return value;
	}

	public var lightIntensityLumens(get, set): Float;
	function get_lightIntensityLumens():Float {
		return node.native.get("light_intensity_lumens");
	}
	function set_lightIntensityLumens(value:Float):Float {
		node.native.set("light_intensity_lumens", value);
		return value;
	}

	public var lightIntensityLux(get, set): Float;
	function get_lightIntensityLux():Float {
		return node.native.get("light_intensity_lux");
	}
	function set_lightIntensityLux(value:Float):Float {
		node.native.set("light_intensity_lux", value);
		return value;
	}

	public var lightNegative(get, set): Bool;
	function get_lightNegative():Bool {
		return node.native.get("light_negative");
	}
	function set_lightNegative(value:Bool):Bool {
		node.native.set("light_negative", value);
		return value;
	}

	public var lightProjector(get, set): Texture2D;
	function get_lightProjector():Texture2D {
		return new Texture2D(node.native.get("light_projector"));
	}
	function set_lightProjector(value:Texture2D):Texture2D {
		node.native.set("light_projector", value.native);
		return value;
	}

	public var lightSize(get, set): Float;
	function get_lightSize():Float {
		return node.native.get("light_size");
	}
	function set_lightSize(value:Float):Float {
		node.native.set("light_size", value);
		return value;
	}

	public var lightSpecular(get, set): Float;
	function get_lightSpecular():Float {
		return node.native.get("light_specular");
	}
	function set_lightSpecular(value:Float):Float {
		node.native.set("light_specular", value);
		return value;
	}

	public var lightTemperature(get, set): Float;
	function get_lightTemperature():Float {
		return node.native.get("light_temperature");
	}
	function set_lightTemperature(value:Float):Float {
		node.native.set("light_temperature", value);
		return value;
	}

	public var lightVolumetricFogEnergy(get, set): Float;
	function get_lightVolumetricFogEnergy():Float {
		return node.native.get("light_volumetric_fog_energy");
	}
	function set_lightVolumetricFogEnergy(value:Float):Float {
		node.native.set("light_volumetric_fog_energy", value);
		return value;
	}

	public var shadowBias(get, set): Float;

	function get_shadowBias():Float {
		return node.native.get("shadow_bias");
	}
	function set_shadowBias(value:Float):Float {
		node.native.set("shadow_bias", value);
		return value;
	}

	public var shadowBlur(get, set): Float;
	function get_shadowBlur():Float {
		return node.native.get("shadow_blur");
	}
	function set_shadowBlur(value:Float):Float {
		node.native.set("shadow_blur", value);
		return value;
	}

	public var shadowCasterMask(get, set): Int;
	function get_shadowCasterMask():Int {
		return node.native.get("shadow_caster_mask");
	}
	function set_shadowCasterMask(value:Int):Int {
		node.native.set("shadow_caster_mask", value);
		return value;
	}

	public var shadowEnabled(get, set): Bool;
	function get_shadowEnabled():Bool {
		return node.native.get("shadow_enabled");
	}
	function set_shadowEnabled(value:Bool):Bool {
		node.native.set("shadow_enabled", value);
		return value;
	}

	public var shadowNormalBias(get, set): Float;
	function get_shadowNormalBias():Float {
		return node.native.get("shadow_normal_bias");
	}
	function set_shadowNormalBias(value:Float):Float {
		node.native.set("shadow_normal_bias", value);
		return value;
	}

	public var shadowOpacity(get, set): Float;

	function get_shadowOpacity():Float {
		return node.native.get("shadow_opacity");
	}
	function set_shadowOpacity(value:Float):Float {
		node.native.set("shadow_opacity", value);
		return value;
	}

	public var shadowReverseCullFace(get, set): Bool;
	function get_shadowReverseCullFace():Bool {
		return node.native.get("shadow_reverse_cull_face");
	}
	function set_shadowReverseCullFace(value:Bool):Bool {
		node.native.set("shadow_reverse_cull_face", value);
		return value;
	}

	public var shadowTransmittanceBias(get, set): Float;
	function get_shadowTransmittanceBias():Float {
		return node.native.get("shadow_transmittance_bias");
	}
	function set_shadowTransmittanceBias(value:Float):Float {
		node.native.set("shadow_transmittance_bias", value);
		return value;
	}

	public override function getData(): Dictionary {
		var data = super.getData();

		data.set("distanceFadeBegin", distanceFadeBegin);
		data.set("distanceFadeEnabled", distanceFadeEnabled);
		data.set("distanceFadeLength", distanceFadeLength);
		data.set("distanceFadeShadow", distanceFadeShadow);
		data.set("lightAngularDistance", lightAngularDistance);
		data.set("lightBakeMode", lightBakeMode);
		data.set("lightColor", lightColor);
		data.set("lightCullMask", lightCullMask);
		data.set("lightEnergy", lightEnergy);
		data.set("lightIndirectEnergy", lightIndirectEnergy);
		data.set("lightIntensityLumens", lightIntensityLumens);
		data.set("lightIntensityLux", lightIntensityLux);
		data.set("lightNegative", lightNegative);
		data.set("lightProjector", DataUtils.varToDict(lightProjector));
		data.set("lightSize", lightSize);
		data.set("lightSpecular", lightSpecular);
		data.set("lightTemperature", lightTemperature);
		data.set("lightVolumetricFogEnergy", lightVolumetricFogEnergy);
		data.set("shadowBias", shadowBias);
		data.set("shadowBlur", shadowBlur);
		data.set("shadowCasterMask", shadowCasterMask);
		data.set("shadowEnabled", shadowEnabled);
		data.set("shadowReverseCullFace", shadowReverseCullFace);
		data.set("shadowTransmittanceBias", shadowTransmittanceBias);

		return data;
	}

	public override function setData(data: Dictionary): Void {
		super.setData(data);

		distanceFadeBegin = data.get("distanceFadeBegin");
		distanceFadeEnabled = data.get("distanceFadeEnabled");
		distanceFadeLength = data.get("distanceFadeLength");
		distanceFadeShadow = data.get("distanceFadeShadow");
		lightAngularDistance = data.get("lightAngularDistance");
		lightBakeMode = data.get("lightBakeMode");
		lightColor = data.get("lightColor");
		lightCullMask = data.get("lightCullMask");
		lightEnergy = data.get("lightEnergy");
		lightIndirectEnergy = data.get("lightIndirectEnergy");
		lightIntensityLumens = data.get("lightIntensityLumens");
		lightIntensityLux = data.get("lightIntensityLux");
		lightNegative = data.get("lightNegative");
		lightProjector = new Texture2D(DataUtils.dictToVar(data.get("lightProjector")));
		lightSize = data.get("lightSize");
		lightSpecular = data.get("lightSpecular");
		lightTemperature = data.get("lightTemperature");
		lightVolumetricFogEnergy = data.get("lightVolumetricFogEnergy");
		shadowBias = data.get("shadowBias");
		shadowBlur = data.get("shadowBlur");
		shadowCasterMask = data.get("shadowCasterMask");
		shadowEnabled = data.get("shadowEnabled");
		shadowNormalBias = data.get("shadowNormalBias");
		shadowOpacity = data.get("shadowOpacity");
		shadowReverseCullFace = data.get("shadowReverseCullFace");
		shadowTransmittanceBias = data.get("shadowTransmittanceBias");
	}

	public function getCorrelatedColor(): Color {
		return node.native.call("get_correlated_color", new ArrayList());
	}

	public function getParam(param: Int): Float {
		var args = new ArrayList();
		args.append(param);
		return node.native.call("get_param", args);
	}

	public function setParam(param: Int, value: Float): Void {
		var args = new ArrayList();
		args.append(param);
		args.append(value);
		node.native.call("set_param", args);
	}

	public override function onInit() {
		editorIconPath = "assets://FugueIcons/icons/light-bulb.png";
	}
}
