package sunaba.spatial;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.BaseClass;
import sunaba.core.Signal;
import sunaba.core.ArrayList;
import sunaba.core.Vector3;

class PhysicsService3D extends BaseClass {
     private static var _native: NativeObject;
    public static function getNative() {
        if (_native == null) {
            _native = NativeObject.getService('PhysicsServer3D');
        }
        return _native;
    }



  public static function areaAddShape(area: Variant, shape: Variant, ?transform: Variant, ?disabled: Bool): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(shape);
      if (transform != null) {
          args.append(transform);
      }
      if (disabled != null) {
          args.append(disabled);
      }
      getNative().call('area_add_shape', args);
  }
  public static function areaAttachObjectInstanceId(area: Variant, id: Int): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(id);
      getNative().call('area_attach_object_instance_id', args);
  }
  public static function areaClearShapes(area: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      getNative().call('area_clear_shapes', args);
  }
  public static function areaCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('area_create', args);
  }
  public static function areaGetCollisionLayer(area: Variant): Int {
      var args = new ArrayList();
      args.append(area);
      return getNative().call('area_get_collision_layer', args);
  }
  public static function areaGetCollisionMask(area: Variant): Int {
      var args = new ArrayList();
      args.append(area);
      return getNative().call('area_get_collision_mask', args);
  }
  public static function areaGetObjectInstanceId(area: Variant): Int {
      var args = new ArrayList();
      args.append(area);
      return getNative().call('area_get_object_instance_id', args);
  }
  public static function areaGetParam(area: Variant, param: Int): Variant {
      var args = new ArrayList();
      args.append(area);
      args.append(param);
      return getNative().call('area_get_param', args);
  }
  public static function areaGetShape(area: Variant, shapeIdx: Int): Variant {
      var args = new ArrayList();
      args.append(area);
      args.append(shapeIdx);
      return getNative().call('area_get_shape', args);
  }
  public static function areaGetShapeCount(area: Variant): Int {
      var args = new ArrayList();
      args.append(area);
      return getNative().call('area_get_shape_count', args);
  }
  public static function areaGetSpace(area: Variant): Variant {
      var args = new ArrayList();
      args.append(area);
      return getNative().call('area_get_space', args);
  }
  public static function areaRemoveShape(area: Variant, shapeIdx: Int): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(shapeIdx);
      getNative().call('area_remove_shape', args);
  }
  public static function areaSetAreaMonitorCallback(area: Variant, callback: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(callback);
      getNative().call('area_set_area_monitor_callback', args);
  }
  public static function areaSetCollisionLayer(area: Variant, layer: Int): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(layer);
      getNative().call('area_set_collision_layer', args);
  }
  public static function areaSetCollisionMask(area: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(mask);
      getNative().call('area_set_collision_mask', args);
  }
  public static function areaSetMonitorCallback(area: Variant, callback: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(callback);
      getNative().call('area_set_monitor_callback', args);
  }
  public static function areaSetMonitorable(area: Variant, monitorable: Bool): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(monitorable);
      getNative().call('area_set_monitorable', args);
  }
  public static function areaSetParam(area: Variant, param: Int, value: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(param);
      args.append(value);
      getNative().call('area_set_param', args);
  }
  public static function areaSetRayPickable(area: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(enable);
      getNative().call('area_set_ray_pickable', args);
  }
  public static function areaSetShape(area: Variant, shapeIdx: Int, shape: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(shapeIdx);
      args.append(shape);
      getNative().call('area_set_shape', args);
  }
  public static function areaSetShapeDisabled(area: Variant, shapeIdx: Int, disabled: Bool): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(shapeIdx);
      args.append(disabled);
      getNative().call('area_set_shape_disabled', args);
  }
  public static function areaSetShapeTransform(area: Variant, shapeIdx: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(shapeIdx);
      args.append(transform);
      getNative().call('area_set_shape_transform', args);
  }
  public static function areaSetSpace(area: Variant, space: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(space);
      getNative().call('area_set_space', args);
  }
  public static function areaSetTransform(area: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(transform);
      getNative().call('area_set_transform', args);
  }
  public static function bodyAddCollisionException(body: Variant, exceptedBody: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(exceptedBody);
      getNative().call('body_add_collision_exception', args);
  }
  public static function bodyAddConstantCentralForce(body: Variant, force: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(force);
      getNative().call('body_add_constant_central_force', args);
  }
  public static function bodyAddConstantForce(body: Variant, force: Vector3, ?position: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(force);
      if (position != null) {
          args.append(position);
      }
      getNative().call('body_add_constant_force', args);
  }
  public static function bodyAddConstantTorque(body: Variant, torque: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(torque);
      getNative().call('body_add_constant_torque', args);
  }
  public static function bodyAddShape(body: Variant, shape: Variant, ?transform: Variant, ?disabled: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(shape);
      if (transform != null) {
          args.append(transform);
      }
      if (disabled != null) {
          args.append(disabled);
      }
      getNative().call('body_add_shape', args);
  }
  public static function bodyApplyCentralForce(body: Variant, force: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(force);
      getNative().call('body_apply_central_force', args);
  }
  public static function bodyApplyCentralImpulse(body: Variant, impulse: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(impulse);
      getNative().call('body_apply_central_impulse', args);
  }
  public static function bodyApplyForce(body: Variant, force: Vector3, ?position: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(force);
      if (position != null) {
          args.append(position);
      }
      getNative().call('body_apply_force', args);
  }
  public static function bodyApplyImpulse(body: Variant, impulse: Vector3, ?position: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(impulse);
      if (position != null) {
          args.append(position);
      }
      getNative().call('body_apply_impulse', args);
  }
  public static function bodyApplyTorque(body: Variant, torque: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(torque);
      getNative().call('body_apply_torque', args);
  }
  public static function bodyApplyTorqueImpulse(body: Variant, impulse: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(impulse);
      getNative().call('body_apply_torque_impulse', args);
  }
  public static function bodyAttachObjectInstanceId(body: Variant, id: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(id);
      getNative().call('body_attach_object_instance_id', args);
  }
  public static function bodyClearShapes(body: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      getNative().call('body_clear_shapes', args);
  }
  public static function bodyCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('body_create', args);
  }
  public static function bodyGetCollisionLayer(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_collision_layer', args);
  }
  public static function bodyGetCollisionMask(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_collision_mask', args);
  }
  public static function bodyGetCollisionPriority(body: Variant): Float {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_collision_priority', args);
  }
  public static function bodyGetConstantForce(body: Variant): Vector3 {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_constant_force', args);
  }
  public static function bodyGetConstantTorque(body: Variant): Vector3 {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_constant_torque', args);
  }
  public static function bodyGetMaxContactsReported(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_max_contacts_reported', args);
  }
  public static function bodyGetMode(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_mode', args);
  }
  public static function bodyGetObjectInstanceId(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_object_instance_id', args);
  }
  public static function bodyGetParam(body: Variant, param: Int): Variant {
      var args = new ArrayList();
      args.append(body);
      args.append(param);
      return getNative().call('body_get_param', args);
  }
  public static function bodyGetShape(body: Variant, shapeIdx: Int): Variant {
      var args = new ArrayList();
      args.append(body);
      args.append(shapeIdx);
      return getNative().call('body_get_shape', args);
  }
  public static function bodyGetShapeCount(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_shape_count', args);
  }
  public static function bodyGetSpace(body: Variant): Variant {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_space', args);
  }
  public static function bodyGetState(body: Variant, state: Int): Variant {
      var args = new ArrayList();
      args.append(body);
      args.append(state);
      return getNative().call('body_get_state', args);
  }
  public static function bodyIsAxisLocked(body: Variant, axis: Int): Bool {
      var args = new ArrayList();
      args.append(body);
      args.append(axis);
      return getNative().call('body_is_axis_locked', args);
  }
  public static function bodyIsContinuousCollisionDetectionEnabled(body: Variant): Bool {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_is_continuous_collision_detection_enabled', args);
  }
  public static function bodyIsOmittingForceIntegration(body: Variant): Bool {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_is_omitting_force_integration', args);
  }
  public static function bodyRemoveCollisionException(body: Variant, exceptedBody: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(exceptedBody);
      getNative().call('body_remove_collision_exception', args);
  }
  public static function bodyRemoveShape(body: Variant, shapeIdx: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(shapeIdx);
      getNative().call('body_remove_shape', args);
  }
  public static function bodyResetMassProperties(body: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      getNative().call('body_reset_mass_properties', args);
  }
  public static function bodySetAxisLock(body: Variant, axis: Int, lock: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(axis);
      args.append(lock);
      getNative().call('body_set_axis_lock', args);
  }
  public static function bodySetAxisVelocity(body: Variant, axisVelocity: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(axisVelocity);
      getNative().call('body_set_axis_velocity', args);
  }
  public static function bodySetCollisionLayer(body: Variant, layer: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(layer);
      getNative().call('body_set_collision_layer', args);
  }
  public static function bodySetCollisionMask(body: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(mask);
      getNative().call('body_set_collision_mask', args);
  }
  public static function bodySetCollisionPriority(body: Variant, priority: Float): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(priority);
      getNative().call('body_set_collision_priority', args);
  }
  public static function bodySetConstantForce(body: Variant, force: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(force);
      getNative().call('body_set_constant_force', args);
  }
  public static function bodySetConstantTorque(body: Variant, torque: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(torque);
      getNative().call('body_set_constant_torque', args);
  }
  public static function bodySetEnableContinuousCollisionDetection(body: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(enable);
      getNative().call('body_set_enable_continuous_collision_detection', args);
  }
  public static function bodySetForceIntegrationCallback(body: Variant, callable: Variant, ?userdata: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(callable);
      if (userdata != null) {
          args.append(userdata);
      }
      getNative().call('body_set_force_integration_callback', args);
  }
  public static function bodySetMaxContactsReported(body: Variant, amount: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(amount);
      getNative().call('body_set_max_contacts_reported', args);
  }
  public static function bodySetMode(body: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(mode);
      getNative().call('body_set_mode', args);
  }
  public static function bodySetOmitForceIntegration(body: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(enable);
      getNative().call('body_set_omit_force_integration', args);
  }
  public static function bodySetParam(body: Variant, param: Int, value: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(param);
      args.append(value);
      getNative().call('body_set_param', args);
  }
  public static function bodySetRayPickable(body: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(enable);
      getNative().call('body_set_ray_pickable', args);
  }
  public static function bodySetShape(body: Variant, shapeIdx: Int, shape: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(shapeIdx);
      args.append(shape);
      getNative().call('body_set_shape', args);
  }
  public static function bodySetShapeDisabled(body: Variant, shapeIdx: Int, disabled: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(shapeIdx);
      args.append(disabled);
      getNative().call('body_set_shape_disabled', args);
  }
  public static function bodySetShapeTransform(body: Variant, shapeIdx: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(shapeIdx);
      args.append(transform);
      getNative().call('body_set_shape_transform', args);
  }
  public static function bodySetSpace(body: Variant, space: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(space);
      getNative().call('body_set_space', args);
  }
  public static function bodySetState(body: Variant, state: Int, value: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(state);
      args.append(value);
      getNative().call('body_set_state', args);
  }
  public static function bodySetStateSyncCallback(body: Variant, callable: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(callable);
      getNative().call('body_set_state_sync_callback', args);
  }
  public static function bodyTestMotion(body: Variant, parameters: Variant, ?result: Variant): Bool {
      var args = new ArrayList();
      args.append(body);
      args.append(parameters);
      if (result != null) {
          args.append(result);
      }
      return getNative().call('body_test_motion', args);
  }
  public static function boxShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('box_shape_create', args);
  }
  public static function capsuleShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('capsule_shape_create', args);
  }
  public static function concavePolygonShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('concave_polygon_shape_create', args);
  }
  public static function coneTwistJointGetParam(joint: Variant, param: Int): Float {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      return getNative().call('cone_twist_joint_get_param', args);
  }
  public static function coneTwistJointSetParam(joint: Variant, param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      args.append(value);
      getNative().call('cone_twist_joint_set_param', args);
  }
  public static function convexPolygonShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('convex_polygon_shape_create', args);
  }
  public static function customShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('custom_shape_create', args);
  }
  public static function cylinderShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('cylinder_shape_create', args);
  }
  public static function freeRid(rid: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('free_rid', args);
  }
  public static function generic6DofJointGetFlag(joint: Variant, axis: Int, flag: Int): Bool {
      var args = new ArrayList();
      args.append(joint);
      args.append(axis);
      args.append(flag);
      return getNative().call('generic_6dof_joint_get_flag', args);
  }
  public static function generic6DofJointGetParam(joint: Variant, axis: Int, param: Int): Float {
      var args = new ArrayList();
      args.append(joint);
      args.append(axis);
      args.append(param);
      return getNative().call('generic_6dof_joint_get_param', args);
  }
  public static function generic6DofJointSetFlag(joint: Variant, axis: Int, flag: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(axis);
      args.append(flag);
      args.append(enable);
      getNative().call('generic_6dof_joint_set_flag', args);
  }
  public static function generic6DofJointSetParam(joint: Variant, axis: Int, param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(axis);
      args.append(param);
      args.append(value);
      getNative().call('generic_6dof_joint_set_param', args);
  }
  public static function getProcessInfo(processInfo: Int): Int {
      var args = new ArrayList();
      args.append(processInfo);
      return getNative().call('get_process_info', args);
  }
  public static function heightmapShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('heightmap_shape_create', args);
  }
  public static function hingeJointGetFlag(joint: Variant, flag: Int): Bool {
      var args = new ArrayList();
      args.append(joint);
      args.append(flag);
      return getNative().call('hinge_joint_get_flag', args);
  }
  public static function hingeJointGetParam(joint: Variant, param: Int): Float {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      return getNative().call('hinge_joint_get_param', args);
  }
  public static function hingeJointSetFlag(joint: Variant, flag: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(flag);
      args.append(enabled);
      getNative().call('hinge_joint_set_flag', args);
  }
  public static function hingeJointSetParam(joint: Variant, param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      args.append(value);
      getNative().call('hinge_joint_set_param', args);
  }
  public static function jointClear(joint: Variant): Void {
      var args = new ArrayList();
      args.append(joint);
      getNative().call('joint_clear', args);
  }
  public static function jointCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('joint_create', args);
  }
  public static function jointDisableCollisionsBetweenBodies(joint: Variant, disable: Bool): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(disable);
      getNative().call('joint_disable_collisions_between_bodies', args);
  }
  public static function jointGetSolverPriority(joint: Variant): Int {
      var args = new ArrayList();
      args.append(joint);
      return getNative().call('joint_get_solver_priority', args);
  }
  public static function jointGetType(joint: Variant): Int {
      var args = new ArrayList();
      args.append(joint);
      return getNative().call('joint_get_type', args);
  }
  public static function jointIsDisabledCollisionsBetweenBodies(joint: Variant): Bool {
      var args = new ArrayList();
      args.append(joint);
      return getNative().call('joint_is_disabled_collisions_between_bodies', args);
  }
  public static function jointMakeConeTwist(joint: Variant, bodyA: Variant, localRefA: Variant, bodyB: Variant, localRefB: Variant): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(bodyA);
      args.append(localRefA);
      args.append(bodyB);
      args.append(localRefB);
      getNative().call('joint_make_cone_twist', args);
  }
  public static function jointMakeGeneric6Dof(joint: Variant, bodyA: Variant, localRefA: Variant, bodyB: Variant, localRefB: Variant): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(bodyA);
      args.append(localRefA);
      args.append(bodyB);
      args.append(localRefB);
      getNative().call('joint_make_generic_6dof', args);
  }
  public static function jointMakeHinge(joint: Variant, bodyA: Variant, hingeA: Variant, bodyB: Variant, hingeB: Variant): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(bodyA);
      args.append(hingeA);
      args.append(bodyB);
      args.append(hingeB);
      getNative().call('joint_make_hinge', args);
  }
  public static function jointMakePin(joint: Variant, bodyA: Variant, localA: Vector3, bodyB: Variant, localB: Vector3): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(bodyA);
      args.append(localA);
      args.append(bodyB);
      args.append(localB);
      getNative().call('joint_make_pin', args);
  }
  public static function jointMakeSlider(joint: Variant, bodyA: Variant, localRefA: Variant, bodyB: Variant, localRefB: Variant): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(bodyA);
      args.append(localRefA);
      args.append(bodyB);
      args.append(localRefB);
      getNative().call('joint_make_slider', args);
  }
  public static function jointSetSolverPriority(joint: Variant, priority: Int): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(priority);
      getNative().call('joint_set_solver_priority', args);
  }
  public static function pinJointGetLocalA(joint: Variant): Vector3 {
      var args = new ArrayList();
      args.append(joint);
      return getNative().call('pin_joint_get_local_a', args);
  }
  public static function pinJointGetLocalB(joint: Variant): Vector3 {
      var args = new ArrayList();
      args.append(joint);
      return getNative().call('pin_joint_get_local_b', args);
  }
  public static function pinJointGetParam(joint: Variant, param: Int): Float {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      return getNative().call('pin_joint_get_param', args);
  }
  public static function pinJointSetLocalA(joint: Variant, localA: Vector3): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(localA);
      getNative().call('pin_joint_set_local_a', args);
  }
  public static function pinJointSetLocalB(joint: Variant, localB: Vector3): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(localB);
      getNative().call('pin_joint_set_local_b', args);
  }
  public static function pinJointSetParam(joint: Variant, param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      args.append(value);
      getNative().call('pin_joint_set_param', args);
  }
  public static function separationRayShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('separation_ray_shape_create', args);
  }
  public static function setActive(active: Bool): Void {
      var args = new ArrayList();
      args.append(active);
      getNative().call('set_active', args);
  }
  public static function shapeGetData(shape: Variant): Variant {
      var args = new ArrayList();
      args.append(shape);
      return getNative().call('shape_get_data', args);
  }
  public static function shapeGetMargin(shape: Variant): Float {
      var args = new ArrayList();
      args.append(shape);
      return getNative().call('shape_get_margin', args);
  }
  public static function shapeGetType(shape: Variant): Int {
      var args = new ArrayList();
      args.append(shape);
      return getNative().call('shape_get_type', args);
  }
  public static function shapeSetData(shape: Variant, data: Variant): Void {
      var args = new ArrayList();
      args.append(shape);
      args.append(data);
      getNative().call('shape_set_data', args);
  }
  public static function shapeSetMargin(shape: Variant, margin: Float): Void {
      var args = new ArrayList();
      args.append(shape);
      args.append(margin);
      getNative().call('shape_set_margin', args);
  }
  public static function sliderJointGetParam(joint: Variant, param: Int): Float {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      return getNative().call('slider_joint_get_param', args);
  }
  public static function sliderJointSetParam(joint: Variant, param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      args.append(value);
      getNative().call('slider_joint_set_param', args);
  }
  public static function softBodyAddCollisionException(body: Variant, bodyB: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(bodyB);
      getNative().call('soft_body_add_collision_exception', args);
  }
  public static function softBodyApplyCentralForce(body: Variant, force: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(force);
      getNative().call('soft_body_apply_central_force', args);
  }
  public static function softBodyApplyCentralImpulse(body: Variant, impulse: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(impulse);
      getNative().call('soft_body_apply_central_impulse', args);
  }
  public static function softBodyApplyPointForce(body: Variant, pointIndex: Int, force: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(pointIndex);
      args.append(force);
      getNative().call('soft_body_apply_point_force', args);
  }
  public static function softBodyApplyPointImpulse(body: Variant, pointIndex: Int, impulse: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(pointIndex);
      args.append(impulse);
      getNative().call('soft_body_apply_point_impulse', args);
  }
  public static function softBodyCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('soft_body_create', args);
  }
  public static function softBodyGetCollisionLayer(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_collision_layer', args);
  }
  public static function softBodyGetCollisionMask(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_collision_mask', args);
  }
  public static function softBodyGetDampingCoefficient(body: Variant): Float {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_damping_coefficient', args);
  }
  public static function softBodyGetDragCoefficient(body: Variant): Float {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_drag_coefficient', args);
  }
  public static function softBodyGetLinearStiffness(body: Variant): Float {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_linear_stiffness', args);
  }
  public static function softBodyGetPointGlobalPosition(body: Variant, pointIndex: Int): Vector3 {
      var args = new ArrayList();
      args.append(body);
      args.append(pointIndex);
      return getNative().call('soft_body_get_point_global_position', args);
  }
  public static function softBodyGetPressureCoefficient(body: Variant): Float {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_pressure_coefficient', args);
  }
  public static function softBodyGetShrinkingFactor(body: Variant): Float {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_shrinking_factor', args);
  }
  public static function softBodyGetSimulationPrecision(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_simulation_precision', args);
  }
  public static function softBodyGetSpace(body: Variant): Variant {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_space', args);
  }
  public static function softBodyGetState(body: Variant, state: Int): Variant {
      var args = new ArrayList();
      args.append(body);
      args.append(state);
      return getNative().call('soft_body_get_state', args);
  }
  public static function softBodyGetTotalMass(body: Variant): Float {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_total_mass', args);
  }
  public static function softBodyIsPointPinned(body: Variant, pointIndex: Int): Bool {
      var args = new ArrayList();
      args.append(body);
      args.append(pointIndex);
      return getNative().call('soft_body_is_point_pinned', args);
  }
  public static function softBodyMovePoint(body: Variant, pointIndex: Int, globalPosition: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(pointIndex);
      args.append(globalPosition);
      getNative().call('soft_body_move_point', args);
  }
  public static function softBodyPinPoint(body: Variant, pointIndex: Int, pin: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(pointIndex);
      args.append(pin);
      getNative().call('soft_body_pin_point', args);
  }
  public static function softBodyRemoveAllPinnedPoints(body: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      getNative().call('soft_body_remove_all_pinned_points', args);
  }
  public static function softBodyRemoveCollisionException(body: Variant, bodyB: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(bodyB);
      getNative().call('soft_body_remove_collision_exception', args);
  }
  public static function softBodySetCollisionLayer(body: Variant, layer: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(layer);
      getNative().call('soft_body_set_collision_layer', args);
  }
  public static function softBodySetCollisionMask(body: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(mask);
      getNative().call('soft_body_set_collision_mask', args);
  }
  public static function softBodySetDampingCoefficient(body: Variant, dampingCoefficient: Float): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(dampingCoefficient);
      getNative().call('soft_body_set_damping_coefficient', args);
  }
  public static function softBodySetDragCoefficient(body: Variant, dragCoefficient: Float): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(dragCoefficient);
      getNative().call('soft_body_set_drag_coefficient', args);
  }
  public static function softBodySetLinearStiffness(body: Variant, stiffness: Float): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(stiffness);
      getNative().call('soft_body_set_linear_stiffness', args);
  }
  public static function softBodySetMesh(body: Variant, mesh: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(mesh);
      getNative().call('soft_body_set_mesh', args);
  }
  public static function softBodySetPressureCoefficient(body: Variant, pressureCoefficient: Float): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(pressureCoefficient);
      getNative().call('soft_body_set_pressure_coefficient', args);
  }
  public static function softBodySetRayPickable(body: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(enable);
      getNative().call('soft_body_set_ray_pickable', args);
  }
  public static function softBodySetShrinkingFactor(body: Variant, shrinkingFactor: Float): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(shrinkingFactor);
      getNative().call('soft_body_set_shrinking_factor', args);
  }
  public static function softBodySetSimulationPrecision(body: Variant, simulationPrecision: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(simulationPrecision);
      getNative().call('soft_body_set_simulation_precision', args);
  }
  public static function softBodySetSpace(body: Variant, space: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(space);
      getNative().call('soft_body_set_space', args);
  }
  public static function softBodySetState(body: Variant, state: Int, variant: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(state);
      args.append(variant);
      getNative().call('soft_body_set_state', args);
  }
  public static function softBodySetTotalMass(body: Variant, totalMass: Float): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(totalMass);
      getNative().call('soft_body_set_total_mass', args);
  }
  public static function softBodySetTransform(body: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(transform);
      getNative().call('soft_body_set_transform', args);
  }
  public static function softBodyUpdateRenderingServer(body: Variant, renderingServerHandler: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(renderingServerHandler);
      getNative().call('soft_body_update_rendering_server', args);
  }
  public static function spaceCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('space_create', args);
  }
  public static function spaceGetParam(space: Variant, param: Int): Float {
      var args = new ArrayList();
      args.append(space);
      args.append(param);
      return getNative().call('space_get_param', args);
  }
  public static function spaceIsActive(space: Variant): Bool {
      var args = new ArrayList();
      args.append(space);
      return getNative().call('space_is_active', args);
  }
  public static function spaceSetActive(space: Variant, active: Bool): Void {
      var args = new ArrayList();
      args.append(space);
      args.append(active);
      getNative().call('space_set_active', args);
  }
  public static function spaceSetParam(space: Variant, param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(space);
      args.append(param);
      args.append(value);
      getNative().call('space_set_param', args);
  }
  public static function sphereShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('sphere_shape_create', args);
  }
  public static function worldBoundaryShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('world_boundary_shape_create', args);
  }
}
