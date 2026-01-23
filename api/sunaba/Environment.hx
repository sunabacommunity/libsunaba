package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Color;
import sunaba.spatial.Sky;
import sunaba.core.Vector3;
import sunaba.core.Signal;

class Environment extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('Environment');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['Environment', native];
        scriptLoader.call('loadScript', args);
    }

    public var adjustmentBrightness(get, set): Float;
    function get_adjustmentBrightness(): Float {
        return native.get('adjustment_brightness');
    }
    function set_adjustmentBrightness(value: Float): Float {
      native.set('adjustment_brightness', value);
        return value;
    }
    public var adjustmentColorCorrection(get, set): Texture;
    function get_adjustmentColorCorrection(): Texture {
        var ref: NativeReference = native.get('adjustment_color_correction');
        return new Texture(ref);
    }
    function set_adjustmentColorCorrection(value: Texture): Texture {
      native.set('adjustment_color_correction', value.native);
        return value;
    }
    public var adjustmentContrast(get, set): Float;
    function get_adjustmentContrast(): Float {
        return native.get('adjustment_contrast');
    }
    function set_adjustmentContrast(value: Float): Float {
      native.set('adjustment_contrast', value);
        return value;
    }
    public var adjustmentEnabled(get, set): Bool;
    function get_adjustmentEnabled(): Bool {
        return native.get('adjustment_enabled');
    }
    function set_adjustmentEnabled(value: Bool): Bool {
      native.set('adjustment_enabled', value);
        return value;
    }
    public var adjustmentSaturation(get, set): Float;
    function get_adjustmentSaturation(): Float {
        return native.get('adjustment_saturation');
    }
    function set_adjustmentSaturation(value: Float): Float {
      native.set('adjustment_saturation', value);
        return value;
    }
    public var ambientLightColor(get, set): Color;
    function get_ambientLightColor(): Color {
        return native.get('ambient_light_color');
    }
    function set_ambientLightColor(value: Color): Color {
      native.set('ambient_light_color', value);
        return value;
    }
    public var ambientLightEnergy(get, set): Float;
    function get_ambientLightEnergy(): Float {
        return native.get('ambient_light_energy');
    }
    function set_ambientLightEnergy(value: Float): Float {
      native.set('ambient_light_energy', value);
        return value;
    }
    public var ambientLightSkyContribution(get, set): Float;
    function get_ambientLightSkyContribution(): Float {
        return native.get('ambient_light_sky_contribution');
    }
    function set_ambientLightSkyContribution(value: Float): Float {
      native.set('ambient_light_sky_contribution', value);
        return value;
    }
    public var ambientLightSource(get, set): Int;
    function get_ambientLightSource(): Int {
        return native.get('ambient_light_source');
    }
    function set_ambientLightSource(value: Int): Int {
      native.set('ambient_light_source', value);
        return value;
    }
    public var backgroundCameraFeedId(get, set): Int;
    function get_backgroundCameraFeedId(): Int {
        return native.get('background_camera_feed_id');
    }
    function set_backgroundCameraFeedId(value: Int): Int {
      native.set('background_camera_feed_id', value);
        return value;
    }
    public var backgroundCanvasMaxLayer(get, set): Int;
    function get_backgroundCanvasMaxLayer(): Int {
        return native.get('background_canvas_max_layer');
    }
    function set_backgroundCanvasMaxLayer(value: Int): Int {
      native.set('background_canvas_max_layer', value);
        return value;
    }
    public var backgroundColor(get, set): Color;
    function get_backgroundColor(): Color {
        return native.get('background_color');
    }
    function set_backgroundColor(value: Color): Color {
      native.set('background_color', value);
        return value;
    }
    public var backgroundEnergyMultiplier(get, set): Float;
    function get_backgroundEnergyMultiplier(): Float {
        return native.get('background_energy_multiplier');
    }
    function set_backgroundEnergyMultiplier(value: Float): Float {
      native.set('background_energy_multiplier', value);
        return value;
    }
    public var backgroundIntensity(get, set): Float;
    function get_backgroundIntensity(): Float {
        return native.get('background_intensity');
    }
    function set_backgroundIntensity(value: Float): Float {
      native.set('background_intensity', value);
        return value;
    }
    public var backgroundMode(get, set): Int;
    function get_backgroundMode(): Int {
        return native.get('background_mode');
    }
    function set_backgroundMode(value: Int): Int {
      native.set('background_mode', value);
        return value;
    }
    public var fogAerialPerspective(get, set): Float;
    function get_fogAerialPerspective(): Float {
        return native.get('fog_aerial_perspective');
    }
    function set_fogAerialPerspective(value: Float): Float {
      native.set('fog_aerial_perspective', value);
        return value;
    }
    public var fogDensity(get, set): Float;
    function get_fogDensity(): Float {
        return native.get('fog_density');
    }
    function set_fogDensity(value: Float): Float {
      native.set('fog_density', value);
        return value;
    }
    public var fogDepthBegin(get, set): Float;
    function get_fogDepthBegin(): Float {
        return native.get('fog_depth_begin');
    }
    function set_fogDepthBegin(value: Float): Float {
      native.set('fog_depth_begin', value);
        return value;
    }
    public var fogDepthCurve(get, set): Float;
    function get_fogDepthCurve(): Float {
        return native.get('fog_depth_curve');
    }
    function set_fogDepthCurve(value: Float): Float {
      native.set('fog_depth_curve', value);
        return value;
    }
    public var fogDepthEnd(get, set): Float;
    function get_fogDepthEnd(): Float {
        return native.get('fog_depth_end');
    }
    function set_fogDepthEnd(value: Float): Float {
      native.set('fog_depth_end', value);
        return value;
    }
    public var fogEnabled(get, set): Bool;
    function get_fogEnabled(): Bool {
        return native.get('fog_enabled');
    }
    function set_fogEnabled(value: Bool): Bool {
      native.set('fog_enabled', value);
        return value;
    }
    public var fogHeight(get, set): Float;
    function get_fogHeight(): Float {
        return native.get('fog_height');
    }
    function set_fogHeight(value: Float): Float {
      native.set('fog_height', value);
        return value;
    }
    public var fogHeightDensity(get, set): Float;
    function get_fogHeightDensity(): Float {
        return native.get('fog_height_density');
    }
    function set_fogHeightDensity(value: Float): Float {
      native.set('fog_height_density', value);
        return value;
    }
    public var fogLightColor(get, set): Color;
    function get_fogLightColor(): Color {
        return native.get('fog_light_color');
    }
    function set_fogLightColor(value: Color): Color {
      native.set('fog_light_color', value);
        return value;
    }
    public var fogLightEnergy(get, set): Float;
    function get_fogLightEnergy(): Float {
        return native.get('fog_light_energy');
    }
    function set_fogLightEnergy(value: Float): Float {
      native.set('fog_light_energy', value);
        return value;
    }
    public var fogMode(get, set): Int;
    function get_fogMode(): Int {
        return native.get('fog_mode');
    }
    function set_fogMode(value: Int): Int {
      native.set('fog_mode', value);
        return value;
    }
    public var fogSkyAffect(get, set): Float;
    function get_fogSkyAffect(): Float {
        return native.get('fog_sky_affect');
    }
    function set_fogSkyAffect(value: Float): Float {
      native.set('fog_sky_affect', value);
        return value;
    }
    public var fogSunScatter(get, set): Float;
    function get_fogSunScatter(): Float {
        return native.get('fog_sun_scatter');
    }
    function set_fogSunScatter(value: Float): Float {
      native.set('fog_sun_scatter', value);
        return value;
    }
    public var glowBlendMode(get, set): Int;
    function get_glowBlendMode(): Int {
        return native.get('glow_blend_mode');
    }
    function set_glowBlendMode(value: Int): Int {
      native.set('glow_blend_mode', value);
        return value;
    }
    public var glowBloom(get, set): Float;
    function get_glowBloom(): Float {
        return native.get('glow_bloom');
    }
    function set_glowBloom(value: Float): Float {
      native.set('glow_bloom', value);
        return value;
    }
    public var glowEnabled(get, set): Bool;
    function get_glowEnabled(): Bool {
        return native.get('glow_enabled');
    }
    function set_glowEnabled(value: Bool): Bool {
      native.set('glow_enabled', value);
        return value;
    }
    public var glowHdrLuminanceCap(get, set): Float;
    function get_glowHdrLuminanceCap(): Float {
        return native.get('glow_hdr_luminance_cap');
    }
    function set_glowHdrLuminanceCap(value: Float): Float {
      native.set('glow_hdr_luminance_cap', value);
        return value;
    }
    public var glowHdrScale(get, set): Float;
    function get_glowHdrScale(): Float {
        return native.get('glow_hdr_scale');
    }
    function set_glowHdrScale(value: Float): Float {
      native.set('glow_hdr_scale', value);
        return value;
    }
    public var glowHdrThreshold(get, set): Float;
    function get_glowHdrThreshold(): Float {
        return native.get('glow_hdr_threshold');
    }
    function set_glowHdrThreshold(value: Float): Float {
      native.set('glow_hdr_threshold', value);
        return value;
    }
    public var glowIntensity(get, set): Float;
    function get_glowIntensity(): Float {
        return native.get('glow_intensity');
    }
    function set_glowIntensity(value: Float): Float {
      native.set('glow_intensity', value);
        return value;
    }
    public var glowLevels1(get, set): Float;
    function get_glowLevels1(): Float {
        return native.get('glow_levels__1');
    }
    function set_glowLevels1(value: Float): Float {
      native.set('glow_levels__1', value);
        return value;
    }
    public var glowLevels2(get, set): Float;
    function get_glowLevels2(): Float {
        return native.get('glow_levels__2');
    }
    function set_glowLevels2(value: Float): Float {
      native.set('glow_levels__2', value);
        return value;
    }
    public var glowLevels3(get, set): Float;
    function get_glowLevels3(): Float {
        return native.get('glow_levels__3');
    }
    function set_glowLevels3(value: Float): Float {
      native.set('glow_levels__3', value);
        return value;
    }
    public var glowLevels4(get, set): Float;
    function get_glowLevels4(): Float {
        return native.get('glow_levels__4');
    }
    function set_glowLevels4(value: Float): Float {
      native.set('glow_levels__4', value);
        return value;
    }
    public var glowLevels5(get, set): Float;
    function get_glowLevels5(): Float {
        return native.get('glow_levels__5');
    }
    function set_glowLevels5(value: Float): Float {
      native.set('glow_levels__5', value);
        return value;
    }
    public var glowLevels6(get, set): Float;
    function get_glowLevels6(): Float {
        return native.get('glow_levels__6');
    }
    function set_glowLevels6(value: Float): Float {
      native.set('glow_levels__6', value);
        return value;
    }
    public var glowLevels7(get, set): Float;
    function get_glowLevels7(): Float {
        return native.get('glow_levels__7');
    }
    function set_glowLevels7(value: Float): Float {
      native.set('glow_levels__7', value);
        return value;
    }
    public var glowMap(get, set): Texture;
    function get_glowMap(): Texture {
        var ref: NativeReference = native.get('glow_map');
        return new Texture(ref);
    }
    function set_glowMap(value: Texture): Texture {
      native.set('glow_map', value.native);
        return value;
    }
    public var glowMapStrength(get, set): Float;
    function get_glowMapStrength(): Float {
        return native.get('glow_map_strength');
    }
    function set_glowMapStrength(value: Float): Float {
      native.set('glow_map_strength', value);
        return value;
    }
    public var glowMix(get, set): Float;
    function get_glowMix(): Float {
        return native.get('glow_mix');
    }
    function set_glowMix(value: Float): Float {
      native.set('glow_mix', value);
        return value;
    }
    public var glowNormalized(get, set): Bool;
    function get_glowNormalized(): Bool {
        return native.get('glow_normalized');
    }
    function set_glowNormalized(value: Bool): Bool {
      native.set('glow_normalized', value);
        return value;
    }
    public var glowStrength(get, set): Float;
    function get_glowStrength(): Float {
        return native.get('glow_strength');
    }
    function set_glowStrength(value: Float): Float {
      native.set('glow_strength', value);
        return value;
    }
    public var reflectedLightSource(get, set): Int;
    function get_reflectedLightSource(): Int {
        return native.get('reflected_light_source');
    }
    function set_reflectedLightSource(value: Int): Int {
      native.set('reflected_light_source', value);
        return value;
    }
    public var sdfgiBounceFeedback(get, set): Float;
    function get_sdfgiBounceFeedback(): Float {
        return native.get('sdfgi_bounce_feedback');
    }
    function set_sdfgiBounceFeedback(value: Float): Float {
      native.set('sdfgi_bounce_feedback', value);
        return value;
    }
    public var sdfgiCascade0Distance(get, set): Float;
    function get_sdfgiCascade0Distance(): Float {
        return native.get('sdfgi_cascade0_distance');
    }
    function set_sdfgiCascade0Distance(value: Float): Float {
      native.set('sdfgi_cascade0_distance', value);
        return value;
    }
    public var sdfgiCascades(get, set): Int;
    function get_sdfgiCascades(): Int {
        return native.get('sdfgi_cascades');
    }
    function set_sdfgiCascades(value: Int): Int {
      native.set('sdfgi_cascades', value);
        return value;
    }
    public var sdfgiEnabled(get, set): Bool;
    function get_sdfgiEnabled(): Bool {
        return native.get('sdfgi_enabled');
    }
    function set_sdfgiEnabled(value: Bool): Bool {
      native.set('sdfgi_enabled', value);
        return value;
    }
    public var sdfgiEnergy(get, set): Float;
    function get_sdfgiEnergy(): Float {
        return native.get('sdfgi_energy');
    }
    function set_sdfgiEnergy(value: Float): Float {
      native.set('sdfgi_energy', value);
        return value;
    }
    public var sdfgiMaxDistance(get, set): Float;
    function get_sdfgiMaxDistance(): Float {
        return native.get('sdfgi_max_distance');
    }
    function set_sdfgiMaxDistance(value: Float): Float {
      native.set('sdfgi_max_distance', value);
        return value;
    }
    public var sdfgiMinCellSize(get, set): Float;
    function get_sdfgiMinCellSize(): Float {
        return native.get('sdfgi_min_cell_size');
    }
    function set_sdfgiMinCellSize(value: Float): Float {
      native.set('sdfgi_min_cell_size', value);
        return value;
    }
    public var sdfgiNormalBias(get, set): Float;
    function get_sdfgiNormalBias(): Float {
        return native.get('sdfgi_normal_bias');
    }
    function set_sdfgiNormalBias(value: Float): Float {
      native.set('sdfgi_normal_bias', value);
        return value;
    }
    public var sdfgiProbeBias(get, set): Float;
    function get_sdfgiProbeBias(): Float {
        return native.get('sdfgi_probe_bias');
    }
    function set_sdfgiProbeBias(value: Float): Float {
      native.set('sdfgi_probe_bias', value);
        return value;
    }
    public var sdfgiReadSkyLight(get, set): Bool;
    function get_sdfgiReadSkyLight(): Bool {
        return native.get('sdfgi_read_sky_light');
    }
    function set_sdfgiReadSkyLight(value: Bool): Bool {
      native.set('sdfgi_read_sky_light', value);
        return value;
    }
    public var sdfgiUseOcclusion(get, set): Bool;
    function get_sdfgiUseOcclusion(): Bool {
        return native.get('sdfgi_use_occlusion');
    }
    function set_sdfgiUseOcclusion(value: Bool): Bool {
      native.set('sdfgi_use_occlusion', value);
        return value;
    }
    public var sdfgiYScale(get, set): Int;
    function get_sdfgiYScale(): Int {
        return native.get('sdfgi_y_scale');
    }
    function set_sdfgiYScale(value: Int): Int {
      native.set('sdfgi_y_scale', value);
        return value;
    }
    public var sky(get, set): Sky;
    function get_sky(): Sky {
        var ref: NativeReference = native.get('sky');
        return new Sky(ref);
    }
    function set_sky(value: Sky): Sky {
      native.set('sky', value.native);
        return value;
    }
    public var skyCustomFov(get, set): Float;
    function get_skyCustomFov(): Float {
        return native.get('sky_custom_fov');
    }
    function set_skyCustomFov(value: Float): Float {
      native.set('sky_custom_fov', value);
        return value;
    }
    public var skyRotation(get, set): Vector3;
    function get_skyRotation(): Vector3 {
        return native.get('sky_rotation');
    }
    function set_skyRotation(value: Vector3): Vector3 {
      native.set('sky_rotation', value);
        return value;
    }
    public var ssaoAoChannelAffect(get, set): Float;
    function get_ssaoAoChannelAffect(): Float {
        return native.get('ssao_ao_channel_affect');
    }
    function set_ssaoAoChannelAffect(value: Float): Float {
      native.set('ssao_ao_channel_affect', value);
        return value;
    }
    public var ssaoDetail(get, set): Float;
    function get_ssaoDetail(): Float {
        return native.get('ssao_detail');
    }
    function set_ssaoDetail(value: Float): Float {
      native.set('ssao_detail', value);
        return value;
    }
    public var ssaoEnabled(get, set): Bool;
    function get_ssaoEnabled(): Bool {
        return native.get('ssao_enabled');
    }
    function set_ssaoEnabled(value: Bool): Bool {
      native.set('ssao_enabled', value);
        return value;
    }
    public var ssaoHorizon(get, set): Float;
    function get_ssaoHorizon(): Float {
        return native.get('ssao_horizon');
    }
    function set_ssaoHorizon(value: Float): Float {
      native.set('ssao_horizon', value);
        return value;
    }
    public var ssaoIntensity(get, set): Float;
    function get_ssaoIntensity(): Float {
        return native.get('ssao_intensity');
    }
    function set_ssaoIntensity(value: Float): Float {
      native.set('ssao_intensity', value);
        return value;
    }
    public var ssaoLightAffect(get, set): Float;
    function get_ssaoLightAffect(): Float {
        return native.get('ssao_light_affect');
    }
    function set_ssaoLightAffect(value: Float): Float {
      native.set('ssao_light_affect', value);
        return value;
    }
    public var ssaoPower(get, set): Float;
    function get_ssaoPower(): Float {
        return native.get('ssao_power');
    }
    function set_ssaoPower(value: Float): Float {
      native.set('ssao_power', value);
        return value;
    }
    public var ssaoRadius(get, set): Float;
    function get_ssaoRadius(): Float {
        return native.get('ssao_radius');
    }
    function set_ssaoRadius(value: Float): Float {
      native.set('ssao_radius', value);
        return value;
    }
    public var ssaoSharpness(get, set): Float;
    function get_ssaoSharpness(): Float {
        return native.get('ssao_sharpness');
    }
    function set_ssaoSharpness(value: Float): Float {
      native.set('ssao_sharpness', value);
        return value;
    }
    public var ssilEnabled(get, set): Bool;
    function get_ssilEnabled(): Bool {
        return native.get('ssil_enabled');
    }
    function set_ssilEnabled(value: Bool): Bool {
      native.set('ssil_enabled', value);
        return value;
    }
    public var ssilIntensity(get, set): Float;
    function get_ssilIntensity(): Float {
        return native.get('ssil_intensity');
    }
    function set_ssilIntensity(value: Float): Float {
      native.set('ssil_intensity', value);
        return value;
    }
    public var ssilNormalRejection(get, set): Float;
    function get_ssilNormalRejection(): Float {
        return native.get('ssil_normal_rejection');
    }
    function set_ssilNormalRejection(value: Float): Float {
      native.set('ssil_normal_rejection', value);
        return value;
    }
    public var ssilRadius(get, set): Float;
    function get_ssilRadius(): Float {
        return native.get('ssil_radius');
    }
    function set_ssilRadius(value: Float): Float {
      native.set('ssil_radius', value);
        return value;
    }
    public var ssilSharpness(get, set): Float;
    function get_ssilSharpness(): Float {
        return native.get('ssil_sharpness');
    }
    function set_ssilSharpness(value: Float): Float {
      native.set('ssil_sharpness', value);
        return value;
    }
    public var ssrDepthTolerance(get, set): Float;
    function get_ssrDepthTolerance(): Float {
        return native.get('ssr_depth_tolerance');
    }
    function set_ssrDepthTolerance(value: Float): Float {
      native.set('ssr_depth_tolerance', value);
        return value;
    }
    public var ssrEnabled(get, set): Bool;
    function get_ssrEnabled(): Bool {
        return native.get('ssr_enabled');
    }
    function set_ssrEnabled(value: Bool): Bool {
      native.set('ssr_enabled', value);
        return value;
    }
    public var ssrFadeIn(get, set): Float;
    function get_ssrFadeIn(): Float {
        return native.get('ssr_fade_in');
    }
    function set_ssrFadeIn(value: Float): Float {
      native.set('ssr_fade_in', value);
        return value;
    }
    public var ssrFadeOut(get, set): Float;
    function get_ssrFadeOut(): Float {
        return native.get('ssr_fade_out');
    }
    function set_ssrFadeOut(value: Float): Float {
      native.set('ssr_fade_out', value);
        return value;
    }
    public var ssrMaxSteps(get, set): Int;
    function get_ssrMaxSteps(): Int {
        return native.get('ssr_max_steps');
    }
    function set_ssrMaxSteps(value: Int): Int {
      native.set('ssr_max_steps', value);
        return value;
    }
    public var tonemapAgxContrast(get, set): Float;
    function get_tonemapAgxContrast(): Float {
        return native.get('tonemap_agx_contrast');
    }
    function set_tonemapAgxContrast(value: Float): Float {
      native.set('tonemap_agx_contrast', value);
        return value;
    }
    public var tonemapAgxWhite(get, set): Float;
    function get_tonemapAgxWhite(): Float {
        return native.get('tonemap_agx_white');
    }
    function set_tonemapAgxWhite(value: Float): Float {
      native.set('tonemap_agx_white', value);
        return value;
    }
    public var tonemapExposure(get, set): Float;
    function get_tonemapExposure(): Float {
        return native.get('tonemap_exposure');
    }
    function set_tonemapExposure(value: Float): Float {
      native.set('tonemap_exposure', value);
        return value;
    }
    public var tonemapMode(get, set): Int;
    function get_tonemapMode(): Int {
        return native.get('tonemap_mode');
    }
    function set_tonemapMode(value: Int): Int {
      native.set('tonemap_mode', value);
        return value;
    }
    public var tonemapWhite(get, set): Float;
    function get_tonemapWhite(): Float {
        return native.get('tonemap_white');
    }
    function set_tonemapWhite(value: Float): Float {
      native.set('tonemap_white', value);
        return value;
    }
    public var volumetricFogAlbedo(get, set): Color;
    function get_volumetricFogAlbedo(): Color {
        return native.get('volumetric_fog_albedo');
    }
    function set_volumetricFogAlbedo(value: Color): Color {
      native.set('volumetric_fog_albedo', value);
        return value;
    }
    public var volumetricFogAmbientInject(get, set): Float;
    function get_volumetricFogAmbientInject(): Float {
        return native.get('volumetric_fog_ambient_inject');
    }
    function set_volumetricFogAmbientInject(value: Float): Float {
      native.set('volumetric_fog_ambient_inject', value);
        return value;
    }
    public var volumetricFogAnisotropy(get, set): Float;
    function get_volumetricFogAnisotropy(): Float {
        return native.get('volumetric_fog_anisotropy');
    }
    function set_volumetricFogAnisotropy(value: Float): Float {
      native.set('volumetric_fog_anisotropy', value);
        return value;
    }
    public var volumetricFogDensity(get, set): Float;
    function get_volumetricFogDensity(): Float {
        return native.get('volumetric_fog_density');
    }
    function set_volumetricFogDensity(value: Float): Float {
      native.set('volumetric_fog_density', value);
        return value;
    }
    public var volumetricFogDetailSpread(get, set): Float;
    function get_volumetricFogDetailSpread(): Float {
        return native.get('volumetric_fog_detail_spread');
    }
    function set_volumetricFogDetailSpread(value: Float): Float {
      native.set('volumetric_fog_detail_spread', value);
        return value;
    }
    public var volumetricFogEmission(get, set): Color;
    function get_volumetricFogEmission(): Color {
        return native.get('volumetric_fog_emission');
    }
    function set_volumetricFogEmission(value: Color): Color {
      native.set('volumetric_fog_emission', value);
        return value;
    }
    public var volumetricFogEmissionEnergy(get, set): Float;
    function get_volumetricFogEmissionEnergy(): Float {
        return native.get('volumetric_fog_emission_energy');
    }
    function set_volumetricFogEmissionEnergy(value: Float): Float {
      native.set('volumetric_fog_emission_energy', value);
        return value;
    }
    public var volumetricFogEnabled(get, set): Bool;
    function get_volumetricFogEnabled(): Bool {
        return native.get('volumetric_fog_enabled');
    }
    function set_volumetricFogEnabled(value: Bool): Bool {
      native.set('volumetric_fog_enabled', value);
        return value;
    }
    public var volumetricFogGiInject(get, set): Float;
    function get_volumetricFogGiInject(): Float {
        return native.get('volumetric_fog_gi_inject');
    }
    function set_volumetricFogGiInject(value: Float): Float {
      native.set('volumetric_fog_gi_inject', value);
        return value;
    }
    public var volumetricFogLength(get, set): Float;
    function get_volumetricFogLength(): Float {
        return native.get('volumetric_fog_length');
    }
    function set_volumetricFogLength(value: Float): Float {
      native.set('volumetric_fog_length', value);
        return value;
    }
    public var volumetricFogSkyAffect(get, set): Float;
    function get_volumetricFogSkyAffect(): Float {
        return native.get('volumetric_fog_sky_affect');
    }
    function set_volumetricFogSkyAffect(value: Float): Float {
      native.set('volumetric_fog_sky_affect', value);
        return value;
    }
    public var volumetricFogTemporalReprojectionAmount(get, set): Float;
    function get_volumetricFogTemporalReprojectionAmount(): Float {
        return native.get('volumetric_fog_temporal_reprojection_amount');
    }
    function set_volumetricFogTemporalReprojectionAmount(value: Float): Float {
      native.set('volumetric_fog_temporal_reprojection_amount', value);
        return value;
    }
    public var volumetricFogTemporalReprojectionEnabled(get, set): Bool;
    function get_volumetricFogTemporalReprojectionEnabled(): Bool {
        return native.get('volumetric_fog_temporal_reprojection_enabled');
    }
    function set_volumetricFogTemporalReprojectionEnabled(value: Bool): Bool {
      native.set('volumetric_fog_temporal_reprojection_enabled', value);
        return value;
    }


  public function getGlowLevel(idx: Int): Float {
      var args = new ArrayList();
      args.append(idx);
      return native.call('get_glow_level', args);
  }
  public function setGlowLevel(idx: Int, intensity: Float): Void {
      var args = new ArrayList();
      args.append(idx);
      args.append(intensity);
      native.call('set_glow_level', args);
  }
}
