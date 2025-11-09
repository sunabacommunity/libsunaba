package sunaba;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Color;
import sunaba.core.Vector3;
import sunaba.core.Signal;
import sunaba.core.Vector2;

class ParticleProcessMaterial extends Material {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('ParticleProcessMaterial');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['ParticleProcessMaterial', native];
        scriptLoader.call('loadScript', args);
    }

    public var alphaCurve(get, set): Texture2D;
    function get_alphaCurve(): Texture2D {
        var ref: NativeReference = native.get('alpha_curve');
        return new Texture2D(ref);
    }
    function set_alphaCurve(value: Texture2D): Texture2D {
      native.set('alpha_curve', value.native);
        return value;
    }
    public var angleCurve(get, set): Texture2D;
    function get_angleCurve(): Texture2D {
        var ref: NativeReference = native.get('angle_curve');
        return new Texture2D(ref);
    }
    function set_angleCurve(value: Texture2D): Texture2D {
      native.set('angle_curve', value.native);
        return value;
    }
    public var angleMax(get, set): Float;
    function get_angleMax(): Float {
        return native.get('angle_max');
    }
    function set_angleMax(value: Float): Float {
      native.set('angle_max', value);
        return value;
    }
    public var angleMin(get, set): Float;
    function get_angleMin(): Float {
        return native.get('angle_min');
    }
    function set_angleMin(value: Float): Float {
      native.set('angle_min', value);
        return value;
    }
    public var angularVelocityCurve(get, set): Texture2D;
    function get_angularVelocityCurve(): Texture2D {
        var ref: NativeReference = native.get('angular_velocity_curve');
        return new Texture2D(ref);
    }
    function set_angularVelocityCurve(value: Texture2D): Texture2D {
      native.set('angular_velocity_curve', value.native);
        return value;
    }
    public var angularVelocityMax(get, set): Float;
    function get_angularVelocityMax(): Float {
        return native.get('angular_velocity_max');
    }
    function set_angularVelocityMax(value: Float): Float {
      native.set('angular_velocity_max', value);
        return value;
    }
    public var angularVelocityMin(get, set): Float;
    function get_angularVelocityMin(): Float {
        return native.get('angular_velocity_min');
    }
    function set_angularVelocityMin(value: Float): Float {
      native.set('angular_velocity_min', value);
        return value;
    }
    public var animOffsetCurve(get, set): Texture2D;
    function get_animOffsetCurve(): Texture2D {
        var ref: NativeReference = native.get('anim_offset_curve');
        return new Texture2D(ref);
    }
    function set_animOffsetCurve(value: Texture2D): Texture2D {
      native.set('anim_offset_curve', value.native);
        return value;
    }
    public var animOffsetMax(get, set): Float;
    function get_animOffsetMax(): Float {
        return native.get('anim_offset_max');
    }
    function set_animOffsetMax(value: Float): Float {
      native.set('anim_offset_max', value);
        return value;
    }
    public var animOffsetMin(get, set): Float;
    function get_animOffsetMin(): Float {
        return native.get('anim_offset_min');
    }
    function set_animOffsetMin(value: Float): Float {
      native.set('anim_offset_min', value);
        return value;
    }
    public var animSpeedCurve(get, set): Texture2D;
    function get_animSpeedCurve(): Texture2D {
        var ref: NativeReference = native.get('anim_speed_curve');
        return new Texture2D(ref);
    }
    function set_animSpeedCurve(value: Texture2D): Texture2D {
      native.set('anim_speed_curve', value.native);
        return value;
    }
    public var animSpeedMax(get, set): Float;
    function get_animSpeedMax(): Float {
        return native.get('anim_speed_max');
    }
    function set_animSpeedMax(value: Float): Float {
      native.set('anim_speed_max', value);
        return value;
    }
    public var animSpeedMin(get, set): Float;
    function get_animSpeedMin(): Float {
        return native.get('anim_speed_min');
    }
    function set_animSpeedMin(value: Float): Float {
      native.set('anim_speed_min', value);
        return value;
    }
    public var attractorInteractionEnabled(get, set): Bool;
    function get_attractorInteractionEnabled(): Bool {
        return native.get('attractor_interaction_enabled');
    }
    function set_attractorInteractionEnabled(value: Bool): Bool {
      native.set('attractor_interaction_enabled', value);
        return value;
    }
    public var collisionBounce(get, set): Float;
    function get_collisionBounce(): Float {
        return native.get('collision_bounce');
    }
    function set_collisionBounce(value: Float): Float {
      native.set('collision_bounce', value);
        return value;
    }
    public var collisionFriction(get, set): Float;
    function get_collisionFriction(): Float {
        return native.get('collision_friction');
    }
    function set_collisionFriction(value: Float): Float {
      native.set('collision_friction', value);
        return value;
    }
    public var collisionMode(get, set): Int;
    function get_collisionMode(): Int {
        return native.get('collision_mode');
    }
    function set_collisionMode(value: Int): Int {
      native.set('collision_mode', value);
        return value;
    }
    public var collisionUseScale(get, set): Bool;
    function get_collisionUseScale(): Bool {
        return native.get('collision_use_scale');
    }
    function set_collisionUseScale(value: Bool): Bool {
      native.set('collision_use_scale', value);
        return value;
    }
    public var color(get, set): Color;
    function get_color(): Color {
        return native.get('color');
    }
    function set_color(value: Color): Color {
      native.set('color', value);
        return value;
    }
    public var colorInitialRamp(get, set): Texture2D;
    function get_colorInitialRamp(): Texture2D {
        var ref: NativeReference = native.get('color_initial_ramp');
        return new Texture2D(ref);
    }
    function set_colorInitialRamp(value: Texture2D): Texture2D {
      native.set('color_initial_ramp', value.native);
        return value;
    }
    public var colorRamp(get, set): Texture2D;
    function get_colorRamp(): Texture2D {
        var ref: NativeReference = native.get('color_ramp');
        return new Texture2D(ref);
    }
    function set_colorRamp(value: Texture2D): Texture2D {
      native.set('color_ramp', value.native);
        return value;
    }
    public var dampingCurve(get, set): Texture2D;
    function get_dampingCurve(): Texture2D {
        var ref: NativeReference = native.get('damping_curve');
        return new Texture2D(ref);
    }
    function set_dampingCurve(value: Texture2D): Texture2D {
      native.set('damping_curve', value.native);
        return value;
    }
    public var dampingMax(get, set): Float;
    function get_dampingMax(): Float {
        return native.get('damping_max');
    }
    function set_dampingMax(value: Float): Float {
      native.set('damping_max', value);
        return value;
    }
    public var dampingMin(get, set): Float;
    function get_dampingMin(): Float {
        return native.get('damping_min');
    }
    function set_dampingMin(value: Float): Float {
      native.set('damping_min', value);
        return value;
    }
    public var direction(get, set): Vector3;
    function get_direction(): Vector3 {
        return native.get('direction');
    }
    function set_direction(value: Vector3): Vector3 {
      native.set('direction', value);
        return value;
    }
    public var directionalVelocityCurve(get, set): Texture2D;
    function get_directionalVelocityCurve(): Texture2D {
        var ref: NativeReference = native.get('directional_velocity_curve');
        return new Texture2D(ref);
    }
    function set_directionalVelocityCurve(value: Texture2D): Texture2D {
      native.set('directional_velocity_curve', value.native);
        return value;
    }
    public var directionalVelocityMax(get, set): Float;
    function get_directionalVelocityMax(): Float {
        return native.get('directional_velocity_max');
    }
    function set_directionalVelocityMax(value: Float): Float {
      native.set('directional_velocity_max', value);
        return value;
    }
    public var directionalVelocityMin(get, set): Float;
    function get_directionalVelocityMin(): Float {
        return native.get('directional_velocity_min');
    }
    function set_directionalVelocityMin(value: Float): Float {
      native.set('directional_velocity_min', value);
        return value;
    }
    public var emissionBoxExtents(get, set): Vector3;
    function get_emissionBoxExtents(): Vector3 {
        return native.get('emission_box_extents');
    }
    function set_emissionBoxExtents(value: Vector3): Vector3 {
      native.set('emission_box_extents', value);
        return value;
    }
    public var emissionColorTexture(get, set): Texture2D;
    function get_emissionColorTexture(): Texture2D {
        var ref: NativeReference = native.get('emission_color_texture');
        return new Texture2D(ref);
    }
    function set_emissionColorTexture(value: Texture2D): Texture2D {
      native.set('emission_color_texture', value.native);
        return value;
    }
    public var emissionCurve(get, set): Texture2D;
    function get_emissionCurve(): Texture2D {
        var ref: NativeReference = native.get('emission_curve');
        return new Texture2D(ref);
    }
    function set_emissionCurve(value: Texture2D): Texture2D {
      native.set('emission_curve', value.native);
        return value;
    }
    public var emissionNormalTexture(get, set): Texture2D;
    function get_emissionNormalTexture(): Texture2D {
        var ref: NativeReference = native.get('emission_normal_texture');
        return new Texture2D(ref);
    }
    function set_emissionNormalTexture(value: Texture2D): Texture2D {
      native.set('emission_normal_texture', value.native);
        return value;
    }
    public var emissionPointCount(get, set): Int;
    function get_emissionPointCount(): Int {
        return native.get('emission_point_count');
    }
    function set_emissionPointCount(value: Int): Int {
      native.set('emission_point_count', value);
        return value;
    }
    public var emissionPointTexture(get, set): Texture2D;
    function get_emissionPointTexture(): Texture2D {
        var ref: NativeReference = native.get('emission_point_texture');
        return new Texture2D(ref);
    }
    function set_emissionPointTexture(value: Texture2D): Texture2D {
      native.set('emission_point_texture', value.native);
        return value;
    }
    public var emissionRingAxis(get, set): Vector3;
    function get_emissionRingAxis(): Vector3 {
        return native.get('emission_ring_axis');
    }
    function set_emissionRingAxis(value: Vector3): Vector3 {
      native.set('emission_ring_axis', value);
        return value;
    }
    public var emissionRingConeAngle(get, set): Float;
    function get_emissionRingConeAngle(): Float {
        return native.get('emission_ring_cone_angle');
    }
    function set_emissionRingConeAngle(value: Float): Float {
      native.set('emission_ring_cone_angle', value);
        return value;
    }
    public var emissionRingHeight(get, set): Float;
    function get_emissionRingHeight(): Float {
        return native.get('emission_ring_height');
    }
    function set_emissionRingHeight(value: Float): Float {
      native.set('emission_ring_height', value);
        return value;
    }
    public var emissionRingInnerRadius(get, set): Float;
    function get_emissionRingInnerRadius(): Float {
        return native.get('emission_ring_inner_radius');
    }
    function set_emissionRingInnerRadius(value: Float): Float {
      native.set('emission_ring_inner_radius', value);
        return value;
    }
    public var emissionRingRadius(get, set): Float;
    function get_emissionRingRadius(): Float {
        return native.get('emission_ring_radius');
    }
    function set_emissionRingRadius(value: Float): Float {
      native.set('emission_ring_radius', value);
        return value;
    }
    public var emissionShape(get, set): Int;
    function get_emissionShape(): Int {
        return native.get('emission_shape');
    }
    function set_emissionShape(value: Int): Int {
      native.set('emission_shape', value);
        return value;
    }
    public var emissionShapeOffset(get, set): Vector3;
    function get_emissionShapeOffset(): Vector3 {
        return native.get('emission_shape_offset');
    }
    function set_emissionShapeOffset(value: Vector3): Vector3 {
      native.set('emission_shape_offset', value);
        return value;
    }
    public var emissionShapeScale(get, set): Vector3;
    function get_emissionShapeScale(): Vector3 {
        return native.get('emission_shape_scale');
    }
    function set_emissionShapeScale(value: Vector3): Vector3 {
      native.set('emission_shape_scale', value);
        return value;
    }
    public var emissionSphereRadius(get, set): Float;
    function get_emissionSphereRadius(): Float {
        return native.get('emission_sphere_radius');
    }
    function set_emissionSphereRadius(value: Float): Float {
      native.set('emission_sphere_radius', value);
        return value;
    }
    public var flatness(get, set): Float;
    function get_flatness(): Float {
        return native.get('flatness');
    }
    function set_flatness(value: Float): Float {
      native.set('flatness', value);
        return value;
    }
    public var gravity(get, set): Vector3;
    function get_gravity(): Vector3 {
        return native.get('gravity');
    }
    function set_gravity(value: Vector3): Vector3 {
      native.set('gravity', value);
        return value;
    }
    public var hueVariationCurve(get, set): Texture2D;
    function get_hueVariationCurve(): Texture2D {
        var ref: NativeReference = native.get('hue_variation_curve');
        return new Texture2D(ref);
    }
    function set_hueVariationCurve(value: Texture2D): Texture2D {
      native.set('hue_variation_curve', value.native);
        return value;
    }
    public var hueVariationMax(get, set): Float;
    function get_hueVariationMax(): Float {
        return native.get('hue_variation_max');
    }
    function set_hueVariationMax(value: Float): Float {
      native.set('hue_variation_max', value);
        return value;
    }
    public var hueVariationMin(get, set): Float;
    function get_hueVariationMin(): Float {
        return native.get('hue_variation_min');
    }
    function set_hueVariationMin(value: Float): Float {
      native.set('hue_variation_min', value);
        return value;
    }
    public var inheritVelocityRatio(get, set): Float;
    function get_inheritVelocityRatio(): Float {
        return native.get('inherit_velocity_ratio');
    }
    function set_inheritVelocityRatio(value: Float): Float {
      native.set('inherit_velocity_ratio', value);
        return value;
    }
    public var initialVelocityMax(get, set): Float;
    function get_initialVelocityMax(): Float {
        return native.get('initial_velocity_max');
    }
    function set_initialVelocityMax(value: Float): Float {
      native.set('initial_velocity_max', value);
        return value;
    }
    public var initialVelocityMin(get, set): Float;
    function get_initialVelocityMin(): Float {
        return native.get('initial_velocity_min');
    }
    function set_initialVelocityMin(value: Float): Float {
      native.set('initial_velocity_min', value);
        return value;
    }
    public var lifetimeRandomness(get, set): Float;
    function get_lifetimeRandomness(): Float {
        return native.get('lifetime_randomness');
    }
    function set_lifetimeRandomness(value: Float): Float {
      native.set('lifetime_randomness', value);
        return value;
    }
    public var linearAccelCurve(get, set): Texture2D;
    function get_linearAccelCurve(): Texture2D {
        var ref: NativeReference = native.get('linear_accel_curve');
        return new Texture2D(ref);
    }
    function set_linearAccelCurve(value: Texture2D): Texture2D {
      native.set('linear_accel_curve', value.native);
        return value;
    }
    public var linearAccelMax(get, set): Float;
    function get_linearAccelMax(): Float {
        return native.get('linear_accel_max');
    }
    function set_linearAccelMax(value: Float): Float {
      native.set('linear_accel_max', value);
        return value;
    }
    public var linearAccelMin(get, set): Float;
    function get_linearAccelMin(): Float {
        return native.get('linear_accel_min');
    }
    function set_linearAccelMin(value: Float): Float {
      native.set('linear_accel_min', value);
        return value;
    }
    public var orbitVelocityCurve(get, set): Texture2D;
    function get_orbitVelocityCurve(): Texture2D {
        var ref: NativeReference = native.get('orbit_velocity_curve');
        return new Texture2D(ref);
    }
    function set_orbitVelocityCurve(value: Texture2D): Texture2D {
      native.set('orbit_velocity_curve', value.native);
        return value;
    }
    public var orbitVelocityMax(get, set): Float;
    function get_orbitVelocityMax(): Float {
        return native.get('orbit_velocity_max');
    }
    function set_orbitVelocityMax(value: Float): Float {
      native.set('orbit_velocity_max', value);
        return value;
    }
    public var orbitVelocityMin(get, set): Float;
    function get_orbitVelocityMin(): Float {
        return native.get('orbit_velocity_min');
    }
    function set_orbitVelocityMin(value: Float): Float {
      native.set('orbit_velocity_min', value);
        return value;
    }
    public var particleFlagAlignY(get, set): Bool;
    function get_particleFlagAlignY(): Bool {
        return native.get('particle_flag_align_y');
    }
    function set_particleFlagAlignY(value: Bool): Bool {
      native.set('particle_flag_align_y', value);
        return value;
    }
    public var particleFlagDampingAsFriction(get, set): Bool;
    function get_particleFlagDampingAsFriction(): Bool {
        return native.get('particle_flag_damping_as_friction');
    }
    function set_particleFlagDampingAsFriction(value: Bool): Bool {
      native.set('particle_flag_damping_as_friction', value);
        return value;
    }
    public var particleFlagDisableZ(get, set): Bool;
    function get_particleFlagDisableZ(): Bool {
        return native.get('particle_flag_disable_z');
    }
    function set_particleFlagDisableZ(value: Bool): Bool {
      native.set('particle_flag_disable_z', value);
        return value;
    }
    public var particleFlagRotateY(get, set): Bool;
    function get_particleFlagRotateY(): Bool {
        return native.get('particle_flag_rotate_y');
    }
    function set_particleFlagRotateY(value: Bool): Bool {
      native.set('particle_flag_rotate_y', value);
        return value;
    }
    public var radialAccelCurve(get, set): Texture2D;
    function get_radialAccelCurve(): Texture2D {
        var ref: NativeReference = native.get('radial_accel_curve');
        return new Texture2D(ref);
    }
    function set_radialAccelCurve(value: Texture2D): Texture2D {
      native.set('radial_accel_curve', value.native);
        return value;
    }
    public var radialAccelMax(get, set): Float;
    function get_radialAccelMax(): Float {
        return native.get('radial_accel_max');
    }
    function set_radialAccelMax(value: Float): Float {
      native.set('radial_accel_max', value);
        return value;
    }
    public var radialAccelMin(get, set): Float;
    function get_radialAccelMin(): Float {
        return native.get('radial_accel_min');
    }
    function set_radialAccelMin(value: Float): Float {
      native.set('radial_accel_min', value);
        return value;
    }
    public var radialVelocityCurve(get, set): Texture2D;
    function get_radialVelocityCurve(): Texture2D {
        var ref: NativeReference = native.get('radial_velocity_curve');
        return new Texture2D(ref);
    }
    function set_radialVelocityCurve(value: Texture2D): Texture2D {
      native.set('radial_velocity_curve', value.native);
        return value;
    }
    public var radialVelocityMax(get, set): Float;
    function get_radialVelocityMax(): Float {
        return native.get('radial_velocity_max');
    }
    function set_radialVelocityMax(value: Float): Float {
      native.set('radial_velocity_max', value);
        return value;
    }
    public var radialVelocityMin(get, set): Float;
    function get_radialVelocityMin(): Float {
        return native.get('radial_velocity_min');
    }
    function set_radialVelocityMin(value: Float): Float {
      native.set('radial_velocity_min', value);
        return value;
    }
    public var scaleCurve(get, set): Texture2D;
    function get_scaleCurve(): Texture2D {
        var ref: NativeReference = native.get('scale_curve');
        return new Texture2D(ref);
    }
    function set_scaleCurve(value: Texture2D): Texture2D {
      native.set('scale_curve', value.native);
        return value;
    }
    public var scaleMax(get, set): Float;
    function get_scaleMax(): Float {
        return native.get('scale_max');
    }
    function set_scaleMax(value: Float): Float {
      native.set('scale_max', value);
        return value;
    }
    public var scaleMin(get, set): Float;
    function get_scaleMin(): Float {
        return native.get('scale_min');
    }
    function set_scaleMin(value: Float): Float {
      native.set('scale_min', value);
        return value;
    }
    public var scaleOverVelocityCurve(get, set): Texture2D;
    function get_scaleOverVelocityCurve(): Texture2D {
        var ref: NativeReference = native.get('scale_over_velocity_curve');
        return new Texture2D(ref);
    }
    function set_scaleOverVelocityCurve(value: Texture2D): Texture2D {
      native.set('scale_over_velocity_curve', value.native);
        return value;
    }
    public var scaleOverVelocityMax(get, set): Float;
    function get_scaleOverVelocityMax(): Float {
        return native.get('scale_over_velocity_max');
    }
    function set_scaleOverVelocityMax(value: Float): Float {
      native.set('scale_over_velocity_max', value);
        return value;
    }
    public var scaleOverVelocityMin(get, set): Float;
    function get_scaleOverVelocityMin(): Float {
        return native.get('scale_over_velocity_min');
    }
    function set_scaleOverVelocityMin(value: Float): Float {
      native.set('scale_over_velocity_min', value);
        return value;
    }
    public var spread(get, set): Float;
    function get_spread(): Float {
        return native.get('spread');
    }
    function set_spread(value: Float): Float {
      native.set('spread', value);
        return value;
    }
    public var subEmitterAmountAtCollision(get, set): Int;
    function get_subEmitterAmountAtCollision(): Int {
        return native.get('sub_emitter_amount_at_collision');
    }
    function set_subEmitterAmountAtCollision(value: Int): Int {
      native.set('sub_emitter_amount_at_collision', value);
        return value;
    }
    public var subEmitterAmountAtEnd(get, set): Int;
    function get_subEmitterAmountAtEnd(): Int {
        return native.get('sub_emitter_amount_at_end');
    }
    function set_subEmitterAmountAtEnd(value: Int): Int {
      native.set('sub_emitter_amount_at_end', value);
        return value;
    }
    public var subEmitterAmountAtStart(get, set): Int;
    function get_subEmitterAmountAtStart(): Int {
        return native.get('sub_emitter_amount_at_start');
    }
    function set_subEmitterAmountAtStart(value: Int): Int {
      native.set('sub_emitter_amount_at_start', value);
        return value;
    }
    public var subEmitterFrequency(get, set): Float;
    function get_subEmitterFrequency(): Float {
        return native.get('sub_emitter_frequency');
    }
    function set_subEmitterFrequency(value: Float): Float {
      native.set('sub_emitter_frequency', value);
        return value;
    }
    public var subEmitterKeepVelocity(get, set): Bool;
    function get_subEmitterKeepVelocity(): Bool {
        return native.get('sub_emitter_keep_velocity');
    }
    function set_subEmitterKeepVelocity(value: Bool): Bool {
      native.set('sub_emitter_keep_velocity', value);
        return value;
    }
    public var subEmitterMode(get, set): Int;
    function get_subEmitterMode(): Int {
        return native.get('sub_emitter_mode');
    }
    function set_subEmitterMode(value: Int): Int {
      native.set('sub_emitter_mode', value);
        return value;
    }
    public var tangentialAccelCurve(get, set): Texture2D;
    function get_tangentialAccelCurve(): Texture2D {
        var ref: NativeReference = native.get('tangential_accel_curve');
        return new Texture2D(ref);
    }
    function set_tangentialAccelCurve(value: Texture2D): Texture2D {
      native.set('tangential_accel_curve', value.native);
        return value;
    }
    public var tangentialAccelMax(get, set): Float;
    function get_tangentialAccelMax(): Float {
        return native.get('tangential_accel_max');
    }
    function set_tangentialAccelMax(value: Float): Float {
      native.set('tangential_accel_max', value);
        return value;
    }
    public var tangentialAccelMin(get, set): Float;
    function get_tangentialAccelMin(): Float {
        return native.get('tangential_accel_min');
    }
    function set_tangentialAccelMin(value: Float): Float {
      native.set('tangential_accel_min', value);
        return value;
    }
    public var turbulenceEnabled(get, set): Bool;
    function get_turbulenceEnabled(): Bool {
        return native.get('turbulence_enabled');
    }
    function set_turbulenceEnabled(value: Bool): Bool {
      native.set('turbulence_enabled', value);
        return value;
    }
    public var turbulenceInfluenceMax(get, set): Float;
    function get_turbulenceInfluenceMax(): Float {
        return native.get('turbulence_influence_max');
    }
    function set_turbulenceInfluenceMax(value: Float): Float {
      native.set('turbulence_influence_max', value);
        return value;
    }
    public var turbulenceInfluenceMin(get, set): Float;
    function get_turbulenceInfluenceMin(): Float {
        return native.get('turbulence_influence_min');
    }
    function set_turbulenceInfluenceMin(value: Float): Float {
      native.set('turbulence_influence_min', value);
        return value;
    }
    public var turbulenceInfluenceOverLife(get, set): Texture2D;
    function get_turbulenceInfluenceOverLife(): Texture2D {
        var ref: NativeReference = native.get('turbulence_influence_over_life');
        return new Texture2D(ref);
    }
    function set_turbulenceInfluenceOverLife(value: Texture2D): Texture2D {
      native.set('turbulence_influence_over_life', value.native);
        return value;
    }
    public var turbulenceInitialDisplacementMax(get, set): Float;
    function get_turbulenceInitialDisplacementMax(): Float {
        return native.get('turbulence_initial_displacement_max');
    }
    function set_turbulenceInitialDisplacementMax(value: Float): Float {
      native.set('turbulence_initial_displacement_max', value);
        return value;
    }
    public var turbulenceInitialDisplacementMin(get, set): Float;
    function get_turbulenceInitialDisplacementMin(): Float {
        return native.get('turbulence_initial_displacement_min');
    }
    function set_turbulenceInitialDisplacementMin(value: Float): Float {
      native.set('turbulence_initial_displacement_min', value);
        return value;
    }
    public var turbulenceNoiseScale(get, set): Float;
    function get_turbulenceNoiseScale(): Float {
        return native.get('turbulence_noise_scale');
    }
    function set_turbulenceNoiseScale(value: Float): Float {
      native.set('turbulence_noise_scale', value);
        return value;
    }
    public var turbulenceNoiseSpeed(get, set): Vector3;
    function get_turbulenceNoiseSpeed(): Vector3 {
        return native.get('turbulence_noise_speed');
    }
    function set_turbulenceNoiseSpeed(value: Vector3): Vector3 {
      native.set('turbulence_noise_speed', value);
        return value;
    }
    public var turbulenceNoiseSpeedRandom(get, set): Float;
    function get_turbulenceNoiseSpeedRandom(): Float {
        return native.get('turbulence_noise_speed_random');
    }
    function set_turbulenceNoiseSpeedRandom(value: Float): Float {
      native.set('turbulence_noise_speed_random', value);
        return value;
    }
    public var turbulenceNoiseStrength(get, set): Float;
    function get_turbulenceNoiseStrength(): Float {
        return native.get('turbulence_noise_strength');
    }
    function set_turbulenceNoiseStrength(value: Float): Float {
      native.set('turbulence_noise_strength', value);
        return value;
    }
    public var velocityLimitCurve(get, set): Texture2D;
    function get_velocityLimitCurve(): Texture2D {
        var ref: NativeReference = native.get('velocity_limit_curve');
        return new Texture2D(ref);
    }
    function set_velocityLimitCurve(value: Texture2D): Texture2D {
      native.set('velocity_limit_curve', value.native);
        return value;
    }
    public var velocityPivot(get, set): Vector3;
    function get_velocityPivot(): Vector3 {
        return native.get('velocity_pivot');
    }
    function set_velocityPivot(value: Vector3): Vector3 {
      native.set('velocity_pivot', value);
        return value;
    }

	private var _emissionShapeChanged: Signal;
	public var emissionShapeChanged(get, default): Signal;
	function get_emissionShapeChanged(): Signal {
	    if (_emissionShapeChanged == null) {
	        _emissionShapeChanged = Signal.createFromReference(native, 'emission_shape_changed');
	    }
	    return _emissionShapeChanged;
	}

  public function getParam(param: Int): Vector2 {
      var args = new ArrayList();
      args.append(param);
      return native.call('get_param', args);
  }
  public function getParamMax(param: Int): Float {
      var args = new ArrayList();
      args.append(param);
      return native.call('get_param_max', args);
  }
  public function getParamMin(param: Int): Float {
      var args = new ArrayList();
      args.append(param);
      return native.call('get_param_min', args);
  }
  public function getParamTexture(param: Int): Texture2D {
      var args = new ArrayList();
      args.append(param);
      var ref: NativeReference = native.call('get_param_texture', args);
      return new Texture2D(ref);
  }
  public function getParticleFlag(particleFlag: Int): Bool {
      var args = new ArrayList();
      args.append(particleFlag);
      return native.call('get_particle_flag', args);
  }
  public function setParam(param: Int, value: Vector2): Void {
      var args = new ArrayList();
      args.append(param);
      args.append(value);
      native.call('set_param', args);
  }
  public function setParamMax(param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(param);
      args.append(value);
      native.call('set_param_max', args);
  }
  public function setParamMin(param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(param);
      args.append(value);
      native.call('set_param_min', args);
  }
  public function setParamTexture(param: Int, texture: Texture2D): Void {
      var args = new ArrayList();
      args.append(param);
      args.append(texture.native);
      native.call('set_param_texture', args);
  }
  public function setParticleFlag(particleFlag: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(particleFlag);
      args.append(enable);
      native.call('set_particle_flag', args);
  }
}
