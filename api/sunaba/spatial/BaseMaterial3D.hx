package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Material;
import sunaba.core.Color;
import sunaba.Texture2D;
import sunaba.core.Vector3;
import sunaba.core.Signal;

class BaseMaterial3D extends Material {
    public function new(?_native: NativeReference) {
        super();
        if (_native == null) {
            _native = new NativeReference('BaseMaterial3D');
        }
        native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['BaseMaterial3D', native];
        scriptLoader.call('loadScript', args);
    }

    public var albedoColor(get, set): Color;
    function get_albedoColor(): Color {
        return native.get('albedo_color');
    }
    function set_albedoColor(value: Color): Color {
      native.set('albedo_color', value);
        return value;
    }
    public var albedoTexture(get, set): Texture2D;
    function get_albedoTexture(): Texture2D {
        var ref: NativeReference = native.get('albedo_texture');
        return new Texture2D(ref);
    }
    function set_albedoTexture(value: Texture2D): Texture2D {
      native.set('albedo_texture', value.native);
        return value;
    }
    public var albedoTextureForceSrgb(get, set): Bool;
    function get_albedoTextureForceSrgb(): Bool {
        return native.get('albedo_texture_force_srgb');
    }
    function set_albedoTextureForceSrgb(value: Bool): Bool {
      native.set('albedo_texture_force_srgb', value);
        return value;
    }
    public var albedoTextureMsdf(get, set): Bool;
    function get_albedoTextureMsdf(): Bool {
        return native.get('albedo_texture_msdf');
    }
    function set_albedoTextureMsdf(value: Bool): Bool {
      native.set('albedo_texture_msdf', value);
        return value;
    }
    public var alphaAntialiasingEdge(get, set): Float;
    function get_alphaAntialiasingEdge(): Float {
        return native.get('alpha_antialiasing_edge');
    }
    function set_alphaAntialiasingEdge(value: Float): Float {
      native.set('alpha_antialiasing_edge', value);
        return value;
    }
    public var alphaAntialiasingMode(get, set): Int;
    function get_alphaAntialiasingMode(): Int {
        return native.get('alpha_antialiasing_mode');
    }
    function set_alphaAntialiasingMode(value: Int): Int {
      native.set('alpha_antialiasing_mode', value);
        return value;
    }
    public var alphaHashScale(get, set): Float;
    function get_alphaHashScale(): Float {
        return native.get('alpha_hash_scale');
    }
    function set_alphaHashScale(value: Float): Float {
      native.set('alpha_hash_scale', value);
        return value;
    }
    public var alphaScissorThreshold(get, set): Float;
    function get_alphaScissorThreshold(): Float {
        return native.get('alpha_scissor_threshold');
    }
    function set_alphaScissorThreshold(value: Float): Float {
      native.set('alpha_scissor_threshold', value);
        return value;
    }
    public var anisotropy(get, set): Float;
    function get_anisotropy(): Float {
        return native.get('anisotropy');
    }
    function set_anisotropy(value: Float): Float {
      native.set('anisotropy', value);
        return value;
    }
    public var anisotropyEnabled(get, set): Bool;
    function get_anisotropyEnabled(): Bool {
        return native.get('anisotropy_enabled');
    }
    function set_anisotropyEnabled(value: Bool): Bool {
      native.set('anisotropy_enabled', value);
        return value;
    }
    public var anisotropyFlowmap(get, set): Texture2D;
    function get_anisotropyFlowmap(): Texture2D {
        var ref: NativeReference = native.get('anisotropy_flowmap');
        return new Texture2D(ref);
    }
    function set_anisotropyFlowmap(value: Texture2D): Texture2D {
      native.set('anisotropy_flowmap', value.native);
        return value;
    }
    public var aoEnabled(get, set): Bool;
    function get_aoEnabled(): Bool {
        return native.get('ao_enabled');
    }
    function set_aoEnabled(value: Bool): Bool {
      native.set('ao_enabled', value);
        return value;
    }
    public var aoLightAffect(get, set): Float;
    function get_aoLightAffect(): Float {
        return native.get('ao_light_affect');
    }
    function set_aoLightAffect(value: Float): Float {
      native.set('ao_light_affect', value);
        return value;
    }
    public var aoOnUv2(get, set): Bool;
    function get_aoOnUv2(): Bool {
        return native.get('ao_on_uv2');
    }
    function set_aoOnUv2(value: Bool): Bool {
      native.set('ao_on_uv2', value);
        return value;
    }
    public var aoTexture(get, set): Texture2D;
    function get_aoTexture(): Texture2D {
        var ref: NativeReference = native.get('ao_texture');
        return new Texture2D(ref);
    }
    function set_aoTexture(value: Texture2D): Texture2D {
      native.set('ao_texture', value.native);
        return value;
    }
    public var aoTextureChannel(get, set): Int;
    function get_aoTextureChannel(): Int {
        return native.get('ao_texture_channel');
    }
    function set_aoTextureChannel(value: Int): Int {
      native.set('ao_texture_channel', value);
        return value;
    }
    public var backlight(get, set): Color;
    function get_backlight(): Color {
        return native.get('backlight');
    }
    function set_backlight(value: Color): Color {
      native.set('backlight', value);
        return value;
    }
    public var backlightEnabled(get, set): Bool;
    function get_backlightEnabled(): Bool {
        return native.get('backlight_enabled');
    }
    function set_backlightEnabled(value: Bool): Bool {
      native.set('backlight_enabled', value);
        return value;
    }
    public var backlightTexture(get, set): Texture2D;
    function get_backlightTexture(): Texture2D {
        var ref: NativeReference = native.get('backlight_texture');
        return new Texture2D(ref);
    }
    function set_backlightTexture(value: Texture2D): Texture2D {
      native.set('backlight_texture', value.native);
        return value;
    }
    public var bentNormalEnabled(get, set): Bool;
    function get_bentNormalEnabled(): Bool {
        return native.get('bent_normal_enabled');
    }
    function set_bentNormalEnabled(value: Bool): Bool {
      native.set('bent_normal_enabled', value);
        return value;
    }
    public var bentNormalTexture(get, set): Texture2D;
    function get_bentNormalTexture(): Texture2D {
        var ref: NativeReference = native.get('bent_normal_texture');
        return new Texture2D(ref);
    }
    function set_bentNormalTexture(value: Texture2D): Texture2D {
      native.set('bent_normal_texture', value.native);
        return value;
    }
    public var billboardKeepScale(get, set): Bool;
    function get_billboardKeepScale(): Bool {
        return native.get('billboard_keep_scale');
    }
    function set_billboardKeepScale(value: Bool): Bool {
      native.set('billboard_keep_scale', value);
        return value;
    }
    public var billboardMode(get, set): Int;
    function get_billboardMode(): Int {
        return native.get('billboard_mode');
    }
    function set_billboardMode(value: Int): Int {
      native.set('billboard_mode', value);
        return value;
    }
    public var blendMode(get, set): Int;
    function get_blendMode(): Int {
        return native.get('blend_mode');
    }
    function set_blendMode(value: Int): Int {
      native.set('blend_mode', value);
        return value;
    }
    public var clearcoat(get, set): Float;
    function get_clearcoat(): Float {
        return native.get('clearcoat');
    }
    function set_clearcoat(value: Float): Float {
      native.set('clearcoat', value);
        return value;
    }
    public var clearcoatEnabled(get, set): Bool;
    function get_clearcoatEnabled(): Bool {
        return native.get('clearcoat_enabled');
    }
    function set_clearcoatEnabled(value: Bool): Bool {
      native.set('clearcoat_enabled', value);
        return value;
    }
    public var clearcoatRoughness(get, set): Float;
    function get_clearcoatRoughness(): Float {
        return native.get('clearcoat_roughness');
    }
    function set_clearcoatRoughness(value: Float): Float {
      native.set('clearcoat_roughness', value);
        return value;
    }
    public var clearcoatTexture(get, set): Texture2D;
    function get_clearcoatTexture(): Texture2D {
        var ref: NativeReference = native.get('clearcoat_texture');
        return new Texture2D(ref);
    }
    function set_clearcoatTexture(value: Texture2D): Texture2D {
      native.set('clearcoat_texture', value.native);
        return value;
    }
    public var cullMode(get, set): Int;
    function get_cullMode(): Int {
        return native.get('cull_mode');
    }
    function set_cullMode(value: Int): Int {
      native.set('cull_mode', value);
        return value;
    }
    public var depthDrawMode(get, set): Int;
    function get_depthDrawMode(): Int {
        return native.get('depth_draw_mode');
    }
    function set_depthDrawMode(value: Int): Int {
      native.set('depth_draw_mode', value);
        return value;
    }
    public var depthTest(get, set): Int;
    function get_depthTest(): Int {
        return native.get('depth_test');
    }
    function set_depthTest(value: Int): Int {
      native.set('depth_test', value);
        return value;
    }
    public var detailAlbedo(get, set): Texture2D;
    function get_detailAlbedo(): Texture2D {
        var ref: NativeReference = native.get('detail_albedo');
        return new Texture2D(ref);
    }
    function set_detailAlbedo(value: Texture2D): Texture2D {
      native.set('detail_albedo', value.native);
        return value;
    }
    public var detailBlendMode(get, set): Int;
    function get_detailBlendMode(): Int {
        return native.get('detail_blend_mode');
    }
    function set_detailBlendMode(value: Int): Int {
      native.set('detail_blend_mode', value);
        return value;
    }
    public var detailEnabled(get, set): Bool;
    function get_detailEnabled(): Bool {
        return native.get('detail_enabled');
    }
    function set_detailEnabled(value: Bool): Bool {
      native.set('detail_enabled', value);
        return value;
    }
    public var detailMask(get, set): Texture2D;
    function get_detailMask(): Texture2D {
        var ref: NativeReference = native.get('detail_mask');
        return new Texture2D(ref);
    }
    function set_detailMask(value: Texture2D): Texture2D {
      native.set('detail_mask', value.native);
        return value;
    }
    public var detailNormal(get, set): Texture2D;
    function get_detailNormal(): Texture2D {
        var ref: NativeReference = native.get('detail_normal');
        return new Texture2D(ref);
    }
    function set_detailNormal(value: Texture2D): Texture2D {
      native.set('detail_normal', value.native);
        return value;
    }
    public var detailUvLayer(get, set): Int;
    function get_detailUvLayer(): Int {
        return native.get('detail_uv_layer');
    }
    function set_detailUvLayer(value: Int): Int {
      native.set('detail_uv_layer', value);
        return value;
    }
    public var diffuseMode(get, set): Int;
    function get_diffuseMode(): Int {
        return native.get('diffuse_mode');
    }
    function set_diffuseMode(value: Int): Int {
      native.set('diffuse_mode', value);
        return value;
    }
    public var disableAmbientLight(get, set): Bool;
    function get_disableAmbientLight(): Bool {
        return native.get('disable_ambient_light');
    }
    function set_disableAmbientLight(value: Bool): Bool {
      native.set('disable_ambient_light', value);
        return value;
    }
    public var disableFog(get, set): Bool;
    function get_disableFog(): Bool {
        return native.get('disable_fog');
    }
    function set_disableFog(value: Bool): Bool {
      native.set('disable_fog', value);
        return value;
    }
    public var disableReceiveShadows(get, set): Bool;
    function get_disableReceiveShadows(): Bool {
        return native.get('disable_receive_shadows');
    }
    function set_disableReceiveShadows(value: Bool): Bool {
      native.set('disable_receive_shadows', value);
        return value;
    }
    public var disableSpecularOcclusion(get, set): Bool;
    function get_disableSpecularOcclusion(): Bool {
        return native.get('disable_specular_occlusion');
    }
    function set_disableSpecularOcclusion(value: Bool): Bool {
      native.set('disable_specular_occlusion', value);
        return value;
    }
    public var distanceFadeMaxDistance(get, set): Float;
    function get_distanceFadeMaxDistance(): Float {
        return native.get('distance_fade_max_distance');
    }
    function set_distanceFadeMaxDistance(value: Float): Float {
      native.set('distance_fade_max_distance', value);
        return value;
    }
    public var distanceFadeMinDistance(get, set): Float;
    function get_distanceFadeMinDistance(): Float {
        return native.get('distance_fade_min_distance');
    }
    function set_distanceFadeMinDistance(value: Float): Float {
      native.set('distance_fade_min_distance', value);
        return value;
    }
    public var distanceFadeMode(get, set): Int;
    function get_distanceFadeMode(): Int {
        return native.get('distance_fade_mode');
    }
    function set_distanceFadeMode(value: Int): Int {
      native.set('distance_fade_mode', value);
        return value;
    }
    public var emission(get, set): Color;
    function get_emission(): Color {
        return native.get('emission');
    }
    function set_emission(value: Color): Color {
      native.set('emission', value);
        return value;
    }
    public var emissionEnabled(get, set): Bool;
    function get_emissionEnabled(): Bool {
        return native.get('emission_enabled');
    }
    function set_emissionEnabled(value: Bool): Bool {
      native.set('emission_enabled', value);
        return value;
    }
    public var emissionEnergyMultiplier(get, set): Float;
    function get_emissionEnergyMultiplier(): Float {
        return native.get('emission_energy_multiplier');
    }
    function set_emissionEnergyMultiplier(value: Float): Float {
      native.set('emission_energy_multiplier', value);
        return value;
    }
    public var emissionIntensity(get, set): Float;
    function get_emissionIntensity(): Float {
        return native.get('emission_intensity');
    }
    function set_emissionIntensity(value: Float): Float {
      native.set('emission_intensity', value);
        return value;
    }
    public var emissionOnUv2(get, set): Bool;
    function get_emissionOnUv2(): Bool {
        return native.get('emission_on_uv2');
    }
    function set_emissionOnUv2(value: Bool): Bool {
      native.set('emission_on_uv2', value);
        return value;
    }
    public var emissionOperator(get, set): Int;
    function get_emissionOperator(): Int {
        return native.get('emission_operator');
    }
    function set_emissionOperator(value: Int): Int {
      native.set('emission_operator', value);
        return value;
    }
    public var emissionTexture(get, set): Texture2D;
    function get_emissionTexture(): Texture2D {
        var ref: NativeReference = native.get('emission_texture');
        return new Texture2D(ref);
    }
    function set_emissionTexture(value: Texture2D): Texture2D {
      native.set('emission_texture', value.native);
        return value;
    }
    public var fixedSize(get, set): Bool;
    function get_fixedSize(): Bool {
        return native.get('fixed_size');
    }
    function set_fixedSize(value: Bool): Bool {
      native.set('fixed_size', value);
        return value;
    }
    public var fovOverride(get, set): Float;
    function get_fovOverride(): Float {
        return native.get('fov_override');
    }
    function set_fovOverride(value: Float): Float {
      native.set('fov_override', value);
        return value;
    }
    public var grow(get, set): Bool;
    function get_grow(): Bool {
        return native.get('grow');
    }
    function set_grow(value: Bool): Bool {
      native.set('grow', value);
        return value;
    }
    public var growAmount(get, set): Float;
    function get_growAmount(): Float {
        return native.get('grow_amount');
    }
    function set_growAmount(value: Float): Float {
      native.set('grow_amount', value);
        return value;
    }
    public var heightmapDeepParallax(get, set): Bool;
    function get_heightmapDeepParallax(): Bool {
        return native.get('heightmap_deep_parallax');
    }
    function set_heightmapDeepParallax(value: Bool): Bool {
      native.set('heightmap_deep_parallax', value);
        return value;
    }
    public var heightmapEnabled(get, set): Bool;
    function get_heightmapEnabled(): Bool {
        return native.get('heightmap_enabled');
    }
    function set_heightmapEnabled(value: Bool): Bool {
      native.set('heightmap_enabled', value);
        return value;
    }
    public var heightmapFlipBinormal(get, set): Bool;
    function get_heightmapFlipBinormal(): Bool {
        return native.get('heightmap_flip_binormal');
    }
    function set_heightmapFlipBinormal(value: Bool): Bool {
      native.set('heightmap_flip_binormal', value);
        return value;
    }
    public var heightmapFlipTangent(get, set): Bool;
    function get_heightmapFlipTangent(): Bool {
        return native.get('heightmap_flip_tangent');
    }
    function set_heightmapFlipTangent(value: Bool): Bool {
      native.set('heightmap_flip_tangent', value);
        return value;
    }
    public var heightmapFlipTexture(get, set): Bool;
    function get_heightmapFlipTexture(): Bool {
        return native.get('heightmap_flip_texture');
    }
    function set_heightmapFlipTexture(value: Bool): Bool {
      native.set('heightmap_flip_texture', value);
        return value;
    }
    public var heightmapMaxLayers(get, set): Int;
    function get_heightmapMaxLayers(): Int {
        return native.get('heightmap_max_layers');
    }
    function set_heightmapMaxLayers(value: Int): Int {
      native.set('heightmap_max_layers', value);
        return value;
    }
    public var heightmapMinLayers(get, set): Int;
    function get_heightmapMinLayers(): Int {
        return native.get('heightmap_min_layers');
    }
    function set_heightmapMinLayers(value: Int): Int {
      native.set('heightmap_min_layers', value);
        return value;
    }
    public var heightmapScale(get, set): Float;
    function get_heightmapScale(): Float {
        return native.get('heightmap_scale');
    }
    function set_heightmapScale(value: Float): Float {
      native.set('heightmap_scale', value);
        return value;
    }
    public var heightmapTexture(get, set): Texture2D;
    function get_heightmapTexture(): Texture2D {
        var ref: NativeReference = native.get('heightmap_texture');
        return new Texture2D(ref);
    }
    function set_heightmapTexture(value: Texture2D): Texture2D {
      native.set('heightmap_texture', value.native);
        return value;
    }
    public var metallic(get, set): Float;
    function get_metallic(): Float {
        return native.get('metallic');
    }
    function set_metallic(value: Float): Float {
      native.set('metallic', value);
        return value;
    }
    public var metallicSpecular(get, set): Float;
    function get_metallicSpecular(): Float {
        return native.get('metallic_specular');
    }
    function set_metallicSpecular(value: Float): Float {
      native.set('metallic_specular', value);
        return value;
    }
    public var metallicTexture(get, set): Texture2D;
    function get_metallicTexture(): Texture2D {
        var ref: NativeReference = native.get('metallic_texture');
        return new Texture2D(ref);
    }
    function set_metallicTexture(value: Texture2D): Texture2D {
      native.set('metallic_texture', value.native);
        return value;
    }
    public var metallicTextureChannel(get, set): Int;
    function get_metallicTextureChannel(): Int {
        return native.get('metallic_texture_channel');
    }
    function set_metallicTextureChannel(value: Int): Int {
      native.set('metallic_texture_channel', value);
        return value;
    }
    public var msdfOutlineSize(get, set): Float;
    function get_msdfOutlineSize(): Float {
        return native.get('msdf_outline_size');
    }
    function set_msdfOutlineSize(value: Float): Float {
      native.set('msdf_outline_size', value);
        return value;
    }
    public var msdfPixelRange(get, set): Float;
    function get_msdfPixelRange(): Float {
        return native.get('msdf_pixel_range');
    }
    function set_msdfPixelRange(value: Float): Float {
      native.set('msdf_pixel_range', value);
        return value;
    }
    public var noDepthTest(get, set): Bool;
    function get_noDepthTest(): Bool {
        return native.get('no_depth_test');
    }
    function set_noDepthTest(value: Bool): Bool {
      native.set('no_depth_test', value);
        return value;
    }
    public var normalEnabled(get, set): Bool;
    function get_normalEnabled(): Bool {
        return native.get('normal_enabled');
    }
    function set_normalEnabled(value: Bool): Bool {
      native.set('normal_enabled', value);
        return value;
    }
    public var normalScale(get, set): Float;
    function get_normalScale(): Float {
        return native.get('normal_scale');
    }
    function set_normalScale(value: Float): Float {
      native.set('normal_scale', value);
        return value;
    }
    public var normalTexture(get, set): Texture2D;
    function get_normalTexture(): Texture2D {
        var ref: NativeReference = native.get('normal_texture');
        return new Texture2D(ref);
    }
    function set_normalTexture(value: Texture2D): Texture2D {
      native.set('normal_texture', value.native);
        return value;
    }
    public var ormTexture(get, set): Texture2D;
    function get_ormTexture(): Texture2D {
        var ref: NativeReference = native.get('orm_texture');
        return new Texture2D(ref);
    }
    function set_ormTexture(value: Texture2D): Texture2D {
      native.set('orm_texture', value.native);
        return value;
    }
    public var particlesAnimHFrames(get, set): Int;
    function get_particlesAnimHFrames(): Int {
        return native.get('particles_anim_h_frames');
    }
    function set_particlesAnimHFrames(value: Int): Int {
      native.set('particles_anim_h_frames', value);
        return value;
    }
    public var particlesAnimLoop(get, set): Bool;
    function get_particlesAnimLoop(): Bool {
        return native.get('particles_anim_loop');
    }
    function set_particlesAnimLoop(value: Bool): Bool {
      native.set('particles_anim_loop', value);
        return value;
    }
    public var particlesAnimVFrames(get, set): Int;
    function get_particlesAnimVFrames(): Int {
        return native.get('particles_anim_v_frames');
    }
    function set_particlesAnimVFrames(value: Int): Int {
      native.set('particles_anim_v_frames', value);
        return value;
    }
    public var pointSize(get, set): Float;
    function get_pointSize(): Float {
        return native.get('point_size');
    }
    function set_pointSize(value: Float): Float {
      native.set('point_size', value);
        return value;
    }
    public var proximityFadeDistance(get, set): Float;
    function get_proximityFadeDistance(): Float {
        return native.get('proximity_fade_distance');
    }
    function set_proximityFadeDistance(value: Float): Float {
      native.set('proximity_fade_distance', value);
        return value;
    }
    public var proximityFadeEnabled(get, set): Bool;
    function get_proximityFadeEnabled(): Bool {
        return native.get('proximity_fade_enabled');
    }
    function set_proximityFadeEnabled(value: Bool): Bool {
      native.set('proximity_fade_enabled', value);
        return value;
    }
    public var refractionEnabled(get, set): Bool;
    function get_refractionEnabled(): Bool {
        return native.get('refraction_enabled');
    }
    function set_refractionEnabled(value: Bool): Bool {
      native.set('refraction_enabled', value);
        return value;
    }
    public var refractionScale(get, set): Float;
    function get_refractionScale(): Float {
        return native.get('refraction_scale');
    }
    function set_refractionScale(value: Float): Float {
      native.set('refraction_scale', value);
        return value;
    }
    public var refractionTexture(get, set): Texture2D;
    function get_refractionTexture(): Texture2D {
        var ref: NativeReference = native.get('refraction_texture');
        return new Texture2D(ref);
    }
    function set_refractionTexture(value: Texture2D): Texture2D {
      native.set('refraction_texture', value.native);
        return value;
    }
    public var refractionTextureChannel(get, set): Int;
    function get_refractionTextureChannel(): Int {
        return native.get('refraction_texture_channel');
    }
    function set_refractionTextureChannel(value: Int): Int {
      native.set('refraction_texture_channel', value);
        return value;
    }
    public var rim(get, set): Float;
    function get_rim(): Float {
        return native.get('rim');
    }
    function set_rim(value: Float): Float {
      native.set('rim', value);
        return value;
    }
    public var rimEnabled(get, set): Bool;
    function get_rimEnabled(): Bool {
        return native.get('rim_enabled');
    }
    function set_rimEnabled(value: Bool): Bool {
      native.set('rim_enabled', value);
        return value;
    }
    public var rimTexture(get, set): Texture2D;
    function get_rimTexture(): Texture2D {
        var ref: NativeReference = native.get('rim_texture');
        return new Texture2D(ref);
    }
    function set_rimTexture(value: Texture2D): Texture2D {
      native.set('rim_texture', value.native);
        return value;
    }
    public var rimTint(get, set): Float;
    function get_rimTint(): Float {
        return native.get('rim_tint');
    }
    function set_rimTint(value: Float): Float {
      native.set('rim_tint', value);
        return value;
    }
    public var roughness(get, set): Float;
    function get_roughness(): Float {
        return native.get('roughness');
    }
    function set_roughness(value: Float): Float {
      native.set('roughness', value);
        return value;
    }
    public var roughnessTexture(get, set): Texture2D;
    function get_roughnessTexture(): Texture2D {
        var ref: NativeReference = native.get('roughness_texture');
        return new Texture2D(ref);
    }
    function set_roughnessTexture(value: Texture2D): Texture2D {
      native.set('roughness_texture', value.native);
        return value;
    }
    public var roughnessTextureChannel(get, set): Int;
    function get_roughnessTextureChannel(): Int {
        return native.get('roughness_texture_channel');
    }
    function set_roughnessTextureChannel(value: Int): Int {
      native.set('roughness_texture_channel', value);
        return value;
    }
    public var shadingMode(get, set): Int;
    function get_shadingMode(): Int {
        return native.get('shading_mode');
    }
    function set_shadingMode(value: Int): Int {
      native.set('shading_mode', value);
        return value;
    }
    public var shadowToOpacity(get, set): Bool;
    function get_shadowToOpacity(): Bool {
        return native.get('shadow_to_opacity');
    }
    function set_shadowToOpacity(value: Bool): Bool {
      native.set('shadow_to_opacity', value);
        return value;
    }
    public var specularMode(get, set): Int;
    function get_specularMode(): Int {
        return native.get('specular_mode');
    }
    function set_specularMode(value: Int): Int {
      native.set('specular_mode', value);
        return value;
    }
    public var stencilColor(get, set): Color;
    function get_stencilColor(): Color {
        return native.get('stencil_color');
    }
    function set_stencilColor(value: Color): Color {
      native.set('stencil_color', value);
        return value;
    }
    public var stencilCompare(get, set): Int;
    function get_stencilCompare(): Int {
        return native.get('stencil_compare');
    }
    function set_stencilCompare(value: Int): Int {
      native.set('stencil_compare', value);
        return value;
    }
    public var stencilFlags(get, set): Int;
    function get_stencilFlags(): Int {
        return native.get('stencil_flags');
    }
    function set_stencilFlags(value: Int): Int {
      native.set('stencil_flags', value);
        return value;
    }
    public var stencilMode(get, set): Int;
    function get_stencilMode(): Int {
        return native.get('stencil_mode');
    }
    function set_stencilMode(value: Int): Int {
      native.set('stencil_mode', value);
        return value;
    }
    public var stencilOutlineThickness(get, set): Float;
    function get_stencilOutlineThickness(): Float {
        return native.get('stencil_outline_thickness');
    }
    function set_stencilOutlineThickness(value: Float): Float {
      native.set('stencil_outline_thickness', value);
        return value;
    }
    public var stencilReference(get, set): Int;
    function get_stencilReference(): Int {
        return native.get('stencil_reference');
    }
    function set_stencilReference(value: Int): Int {
      native.set('stencil_reference', value);
        return value;
    }
    public var subsurfScatterEnabled(get, set): Bool;
    function get_subsurfScatterEnabled(): Bool {
        return native.get('subsurf_scatter_enabled');
    }
    function set_subsurfScatterEnabled(value: Bool): Bool {
      native.set('subsurf_scatter_enabled', value);
        return value;
    }
    public var subsurfScatterSkinMode(get, set): Bool;
    function get_subsurfScatterSkinMode(): Bool {
        return native.get('subsurf_scatter_skin_mode');
    }
    function set_subsurfScatterSkinMode(value: Bool): Bool {
      native.set('subsurf_scatter_skin_mode', value);
        return value;
    }
    public var subsurfScatterStrength(get, set): Float;
    function get_subsurfScatterStrength(): Float {
        return native.get('subsurf_scatter_strength');
    }
    function set_subsurfScatterStrength(value: Float): Float {
      native.set('subsurf_scatter_strength', value);
        return value;
    }
    public var subsurfScatterTexture(get, set): Texture2D;
    function get_subsurfScatterTexture(): Texture2D {
        var ref: NativeReference = native.get('subsurf_scatter_texture');
        return new Texture2D(ref);
    }
    function set_subsurfScatterTexture(value: Texture2D): Texture2D {
      native.set('subsurf_scatter_texture', value.native);
        return value;
    }
    public var subsurfScatterTransmittanceBoost(get, set): Float;
    function get_subsurfScatterTransmittanceBoost(): Float {
        return native.get('subsurf_scatter_transmittance_boost');
    }
    function set_subsurfScatterTransmittanceBoost(value: Float): Float {
      native.set('subsurf_scatter_transmittance_boost', value);
        return value;
    }
    public var subsurfScatterTransmittanceColor(get, set): Color;
    function get_subsurfScatterTransmittanceColor(): Color {
        return native.get('subsurf_scatter_transmittance_color');
    }
    function set_subsurfScatterTransmittanceColor(value: Color): Color {
      native.set('subsurf_scatter_transmittance_color', value);
        return value;
    }
    public var subsurfScatterTransmittanceDepth(get, set): Float;
    function get_subsurfScatterTransmittanceDepth(): Float {
        return native.get('subsurf_scatter_transmittance_depth');
    }
    function set_subsurfScatterTransmittanceDepth(value: Float): Float {
      native.set('subsurf_scatter_transmittance_depth', value);
        return value;
    }
    public var subsurfScatterTransmittanceEnabled(get, set): Bool;
    function get_subsurfScatterTransmittanceEnabled(): Bool {
        return native.get('subsurf_scatter_transmittance_enabled');
    }
    function set_subsurfScatterTransmittanceEnabled(value: Bool): Bool {
      native.set('subsurf_scatter_transmittance_enabled', value);
        return value;
    }
    public var subsurfScatterTransmittanceTexture(get, set): Texture2D;
    function get_subsurfScatterTransmittanceTexture(): Texture2D {
        var ref: NativeReference = native.get('subsurf_scatter_transmittance_texture');
        return new Texture2D(ref);
    }
    function set_subsurfScatterTransmittanceTexture(value: Texture2D): Texture2D {
      native.set('subsurf_scatter_transmittance_texture', value.native);
        return value;
    }
    public var textureFilter(get, set): Int;
    function get_textureFilter(): Int {
        return native.get('texture_filter');
    }
    function set_textureFilter(value: Int): Int {
      native.set('texture_filter', value);
        return value;
    }
    public var textureRepeat(get, set): Bool;
    function get_textureRepeat(): Bool {
        return native.get('texture_repeat');
    }
    function set_textureRepeat(value: Bool): Bool {
      native.set('texture_repeat', value);
        return value;
    }
    public var transparency(get, set): Int;
    function get_transparency(): Int {
        return native.get('transparency');
    }
    function set_transparency(value: Int): Int {
      native.set('transparency', value);
        return value;
    }
    public var useFovOverride(get, set): Bool;
    function get_useFovOverride(): Bool {
        return native.get('use_fov_override');
    }
    function set_useFovOverride(value: Bool): Bool {
      native.set('use_fov_override', value);
        return value;
    }
    public var useParticleTrails(get, set): Bool;
    function get_useParticleTrails(): Bool {
        return native.get('use_particle_trails');
    }
    function set_useParticleTrails(value: Bool): Bool {
      native.set('use_particle_trails', value);
        return value;
    }
    public var usePointSize(get, set): Bool;
    function get_usePointSize(): Bool {
        return native.get('use_point_size');
    }
    function set_usePointSize(value: Bool): Bool {
      native.set('use_point_size', value);
        return value;
    }
    public var useZClipScale(get, set): Bool;
    function get_useZClipScale(): Bool {
        return native.get('use_z_clip_scale');
    }
    function set_useZClipScale(value: Bool): Bool {
      native.set('use_z_clip_scale', value);
        return value;
    }
    public var uv1Offset(get, set): Vector3;
    function get_uv1Offset(): Vector3 {
        return native.get('uv1_offset');
    }
    function set_uv1Offset(value: Vector3): Vector3 {
      native.set('uv1_offset', value);
        return value;
    }
    public var uv1Scale(get, set): Vector3;
    function get_uv1Scale(): Vector3 {
        return native.get('uv1_scale');
    }
    function set_uv1Scale(value: Vector3): Vector3 {
      native.set('uv1_scale', value);
        return value;
    }
    public var uv1Triplanar(get, set): Bool;
    function get_uv1Triplanar(): Bool {
        return native.get('uv1_triplanar');
    }
    function set_uv1Triplanar(value: Bool): Bool {
      native.set('uv1_triplanar', value);
        return value;
    }
    public var uv1TriplanarSharpness(get, set): Float;
    function get_uv1TriplanarSharpness(): Float {
        return native.get('uv1_triplanar_sharpness');
    }
    function set_uv1TriplanarSharpness(value: Float): Float {
      native.set('uv1_triplanar_sharpness', value);
        return value;
    }
    public var uv1WorldTriplanar(get, set): Bool;
    function get_uv1WorldTriplanar(): Bool {
        return native.get('uv1_world_triplanar');
    }
    function set_uv1WorldTriplanar(value: Bool): Bool {
      native.set('uv1_world_triplanar', value);
        return value;
    }
    public var uv2Offset(get, set): Vector3;
    function get_uv2Offset(): Vector3 {
        return native.get('uv2_offset');
    }
    function set_uv2Offset(value: Vector3): Vector3 {
      native.set('uv2_offset', value);
        return value;
    }
    public var uv2Scale(get, set): Vector3;
    function get_uv2Scale(): Vector3 {
        return native.get('uv2_scale');
    }
    function set_uv2Scale(value: Vector3): Vector3 {
      native.set('uv2_scale', value);
        return value;
    }
    public var uv2Triplanar(get, set): Bool;
    function get_uv2Triplanar(): Bool {
        return native.get('uv2_triplanar');
    }
    function set_uv2Triplanar(value: Bool): Bool {
      native.set('uv2_triplanar', value);
        return value;
    }
    public var uv2TriplanarSharpness(get, set): Float;
    function get_uv2TriplanarSharpness(): Float {
        return native.get('uv2_triplanar_sharpness');
    }
    function set_uv2TriplanarSharpness(value: Float): Float {
      native.set('uv2_triplanar_sharpness', value);
        return value;
    }
    public var uv2WorldTriplanar(get, set): Bool;
    function get_uv2WorldTriplanar(): Bool {
        return native.get('uv2_world_triplanar');
    }
    function set_uv2WorldTriplanar(value: Bool): Bool {
      native.set('uv2_world_triplanar', value);
        return value;
    }
    public var vertexColorIsSrgb(get, set): Bool;
    function get_vertexColorIsSrgb(): Bool {
        return native.get('vertex_color_is_srgb');
    }
    function set_vertexColorIsSrgb(value: Bool): Bool {
      native.set('vertex_color_is_srgb', value);
        return value;
    }
    public var vertexColorUseAsAlbedo(get, set): Bool;
    function get_vertexColorUseAsAlbedo(): Bool {
        return native.get('vertex_color_use_as_albedo');
    }
    function set_vertexColorUseAsAlbedo(value: Bool): Bool {
      native.set('vertex_color_use_as_albedo', value);
        return value;
    }
    public var zClipScale(get, set): Float;
    function get_zClipScale(): Float {
        return native.get('z_clip_scale');
    }
    function set_zClipScale(value: Float): Float {
      native.set('z_clip_scale', value);
        return value;
    }


  public function getFeature(feature: Int): Bool {
      var args = new ArrayList();
      args.append(feature);
      return native.call('get_feature', args);
  }
  public function getFlag(flag: Int): Bool {
      var args = new ArrayList();
      args.append(flag);
      return native.call('get_flag', args);
  }
  public function getTexture(param: Int): Texture2D {
      var args = new ArrayList();
      args.append(param);
      var ref: NativeReference = native.call('get_texture', args);
      return new Texture2D(ref);
  }
  public function setFeature(feature: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(feature);
      args.append(enable);
      native.call('set_feature', args);
  }
  public function setFlag(flag: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(flag);
      args.append(enable);
      native.call('set_flag', args);
  }
  public function setTexture(param: Int, texture: Texture2D): Void {
      var args = new ArrayList();
      args.append(param);
      args.append(texture.native);
      native.call('set_texture', args);
  }
}
