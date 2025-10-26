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
            _native = NativeObject.getService('PhysicsService3D');
        }
        return _native;
    }



  public function areaAddShape(area: Variant, shape: Variant, ?transform: Variant, ?disabled: Bool): Void {
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
  public function areaAttachObjectInstanceId(area: Variant, id: Int): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(id);
      getNative().call('area_attach_object_instance_id', args);
  }
  public function areaClearShapes(area: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      getNative().call('area_clear_shapes', args);
  }
  public function areaCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('area_create', args);
  }
  public function areaGetCollisionLayer(area: Variant): Int {
      var args = new ArrayList();
      args.append(area);
      return getNative().call('area_get_collision_layer', args);
  }
  public function areaGetCollisionMask(area: Variant): Int {
      var args = new ArrayList();
      args.append(area);
      return getNative().call('area_get_collision_mask', args);
  }
  public function areaGetObjectInstanceId(area: Variant): Int {
      var args = new ArrayList();
      args.append(area);
      return getNative().call('area_get_object_instance_id', args);
  }
  public function areaGetParam(area: Variant, param: Int): Variant {
      var args = new ArrayList();
      args.append(area);
      args.append(param);
      return getNative().call('area_get_param', args);
  }
  public function areaGetShape(area: Variant, shapeIdx: Int): Variant {
      var args = new ArrayList();
      args.append(area);
      args.append(shapeIdx);
      return getNative().call('area_get_shape', args);
  }
  public function areaGetShapeCount(area: Variant): Int {
      var args = new ArrayList();
      args.append(area);
      return getNative().call('area_get_shape_count', args);
  }
  public function areaGetSpace(area: Variant): Variant {
      var args = new ArrayList();
      args.append(area);
      return getNative().call('area_get_space', args);
  }
  public function areaRemoveShape(area: Variant, shapeIdx: Int): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(shapeIdx);
      getNative().call('area_remove_shape', args);
  }
  public function areaSetAreaMonitorCallback(area: Variant, callback: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(callback);
      getNative().call('area_set_area_monitor_callback', args);
  }
  public function areaSetCollisionLayer(area: Variant, layer: Int): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(layer);
      getNative().call('area_set_collision_layer', args);
  }
  public function areaSetCollisionMask(area: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(mask);
      getNative().call('area_set_collision_mask', args);
  }
  public function areaSetMonitorCallback(area: Variant, callback: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(callback);
      getNative().call('area_set_monitor_callback', args);
  }
  public function areaSetMonitorable(area: Variant, monitorable: Bool): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(monitorable);
      getNative().call('area_set_monitorable', args);
  }
  public function areaSetParam(area: Variant, param: Int, value: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(param);
      args.append(value);
      getNative().call('area_set_param', args);
  }
  public function areaSetRayPickable(area: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(enable);
      getNative().call('area_set_ray_pickable', args);
  }
  public function areaSetShape(area: Variant, shapeIdx: Int, shape: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(shapeIdx);
      args.append(shape);
      getNative().call('area_set_shape', args);
  }
  public function areaSetShapeDisabled(area: Variant, shapeIdx: Int, disabled: Bool): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(shapeIdx);
      args.append(disabled);
      getNative().call('area_set_shape_disabled', args);
  }
  public function areaSetShapeTransform(area: Variant, shapeIdx: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(shapeIdx);
      args.append(transform);
      getNative().call('area_set_shape_transform', args);
  }
  public function areaSetSpace(area: Variant, space: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(space);
      getNative().call('area_set_space', args);
  }
  public function areaSetTransform(area: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(area);
      args.append(transform);
      getNative().call('area_set_transform', args);
  }
  public function bodyAddCollisionException(body: Variant, exceptedBody: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(exceptedBody);
      getNative().call('body_add_collision_exception', args);
  }
  public function bodyAddConstantCentralForce(body: Variant, force: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(force);
      getNative().call('body_add_constant_central_force', args);
  }
  public function bodyAddConstantForce(body: Variant, force: Vector3, ?position: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(force);
      if (position != null) {
          args.append(position);
      }
      getNative().call('body_add_constant_force', args);
  }
  public function bodyAddConstantTorque(body: Variant, torque: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(torque);
      getNative().call('body_add_constant_torque', args);
  }
  public function bodyAddShape(body: Variant, shape: Variant, ?transform: Variant, ?disabled: Bool): Void {
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
  public function bodyApplyCentralForce(body: Variant, force: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(force);
      getNative().call('body_apply_central_force', args);
  }
  public function bodyApplyCentralImpulse(body: Variant, impulse: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(impulse);
      getNative().call('body_apply_central_impulse', args);
  }
  public function bodyApplyForce(body: Variant, force: Vector3, ?position: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(force);
      if (position != null) {
          args.append(position);
      }
      getNative().call('body_apply_force', args);
  }
  public function bodyApplyImpulse(body: Variant, impulse: Vector3, ?position: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(impulse);
      if (position != null) {
          args.append(position);
      }
      getNative().call('body_apply_impulse', args);
  }
  public function bodyApplyTorque(body: Variant, torque: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(torque);
      getNative().call('body_apply_torque', args);
  }
  public function bodyApplyTorqueImpulse(body: Variant, impulse: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(impulse);
      getNative().call('body_apply_torque_impulse', args);
  }
  public function bodyAttachObjectInstanceId(body: Variant, id: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(id);
      getNative().call('body_attach_object_instance_id', args);
  }
  public function bodyClearShapes(body: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      getNative().call('body_clear_shapes', args);
  }
  public function bodyCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('body_create', args);
  }
  public function bodyGetCollisionLayer(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_collision_layer', args);
  }
  public function bodyGetCollisionMask(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_collision_mask', args);
  }
  public function bodyGetCollisionPriority(body: Variant): Float {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_collision_priority', args);
  }
  public function bodyGetConstantForce(body: Variant): Vector3 {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_constant_force', args);
  }
  public function bodyGetConstantTorque(body: Variant): Vector3 {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_constant_torque', args);
  }
  public function bodyGetMaxContactsReported(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_max_contacts_reported', args);
  }
  public function bodyGetMode(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_mode', args);
  }
  public function bodyGetObjectInstanceId(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_object_instance_id', args);
  }
  public function bodyGetParam(body: Variant, param: Int): Variant {
      var args = new ArrayList();
      args.append(body);
      args.append(param);
      return getNative().call('body_get_param', args);
  }
  public function bodyGetShape(body: Variant, shapeIdx: Int): Variant {
      var args = new ArrayList();
      args.append(body);
      args.append(shapeIdx);
      return getNative().call('body_get_shape', args);
  }
  public function bodyGetShapeCount(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_shape_count', args);
  }
  public function bodyGetSpace(body: Variant): Variant {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_get_space', args);
  }
  public function bodyGetState(body: Variant, state: Int): Variant {
      var args = new ArrayList();
      args.append(body);
      args.append(state);
      return getNative().call('body_get_state', args);
  }
  public function bodyIsAxisLocked(body: Variant, axis: Int): Bool {
      var args = new ArrayList();
      args.append(body);
      args.append(axis);
      return getNative().call('body_is_axis_locked', args);
  }
  public function bodyIsContinuousCollisionDetectionEnabled(body: Variant): Bool {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_is_continuous_collision_detection_enabled', args);
  }
  public function bodyIsOmittingForceIntegration(body: Variant): Bool {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('body_is_omitting_force_integration', args);
  }
  public function bodyRemoveCollisionException(body: Variant, exceptedBody: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(exceptedBody);
      getNative().call('body_remove_collision_exception', args);
  }
  public function bodyRemoveShape(body: Variant, shapeIdx: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(shapeIdx);
      getNative().call('body_remove_shape', args);
  }
  public function bodyResetMassProperties(body: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      getNative().call('body_reset_mass_properties', args);
  }
  public function bodySetAxisLock(body: Variant, axis: Int, lock: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(axis);
      args.append(lock);
      getNative().call('body_set_axis_lock', args);
  }
  public function bodySetAxisVelocity(body: Variant, axisVelocity: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(axisVelocity);
      getNative().call('body_set_axis_velocity', args);
  }
  public function bodySetCollisionLayer(body: Variant, layer: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(layer);
      getNative().call('body_set_collision_layer', args);
  }
  public function bodySetCollisionMask(body: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(mask);
      getNative().call('body_set_collision_mask', args);
  }
  public function bodySetCollisionPriority(body: Variant, priority: Float): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(priority);
      getNative().call('body_set_collision_priority', args);
  }
  public function bodySetConstantForce(body: Variant, force: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(force);
      getNative().call('body_set_constant_force', args);
  }
  public function bodySetConstantTorque(body: Variant, torque: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(torque);
      getNative().call('body_set_constant_torque', args);
  }
  public function bodySetEnableContinuousCollisionDetection(body: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(enable);
      getNative().call('body_set_enable_continuous_collision_detection', args);
  }
  public function bodySetForceIntegrationCallback(body: Variant, callable: Variant, ?userdata: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(callable);
      if (userdata != null) {
          args.append(userdata);
      }
      getNative().call('body_set_force_integration_callback', args);
  }
  public function bodySetMaxContactsReported(body: Variant, amount: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(amount);
      getNative().call('body_set_max_contacts_reported', args);
  }
  public function bodySetMode(body: Variant, mode: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(mode);
      getNative().call('body_set_mode', args);
  }
  public function bodySetOmitForceIntegration(body: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(enable);
      getNative().call('body_set_omit_force_integration', args);
  }
  public function bodySetParam(body: Variant, param: Int, value: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(param);
      args.append(value);
      getNative().call('body_set_param', args);
  }
  public function bodySetRayPickable(body: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(enable);
      getNative().call('body_set_ray_pickable', args);
  }
  public function bodySetShape(body: Variant, shapeIdx: Int, shape: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(shapeIdx);
      args.append(shape);
      getNative().call('body_set_shape', args);
  }
  public function bodySetShapeDisabled(body: Variant, shapeIdx: Int, disabled: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(shapeIdx);
      args.append(disabled);
      getNative().call('body_set_shape_disabled', args);
  }
  public function bodySetShapeTransform(body: Variant, shapeIdx: Int, transform: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(shapeIdx);
      args.append(transform);
      getNative().call('body_set_shape_transform', args);
  }
  public function bodySetSpace(body: Variant, space: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(space);
      getNative().call('body_set_space', args);
  }
  public function bodySetState(body: Variant, state: Int, value: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(state);
      args.append(value);
      getNative().call('body_set_state', args);
  }
  public function bodySetStateSyncCallback(body: Variant, callable: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(callable);
      getNative().call('body_set_state_sync_callback', args);
  }
  public function bodyTestMotion(body: Variant, parameters: Variant, ?result: Variant): Bool {
      var args = new ArrayList();
      args.append(body);
      args.append(parameters);
      if (result != null) {
          args.append(result);
      }
      return getNative().call('body_test_motion', args);
  }
  public function boxShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('box_shape_create', args);
  }
  public function capsuleShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('capsule_shape_create', args);
  }
  public function concavePolygonShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('concave_polygon_shape_create', args);
  }
  public function coneTwistJointGetParam(joint: Variant, param: Int): Float {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      return getNative().call('cone_twist_joint_get_param', args);
  }
  public function coneTwistJointSetParam(joint: Variant, param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      args.append(value);
      getNative().call('cone_twist_joint_set_param', args);
  }
  public function convexPolygonShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('convex_polygon_shape_create', args);
  }
  public function customShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('custom_shape_create', args);
  }
  public function cylinderShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('cylinder_shape_create', args);
  }
  public function freeRid(rid: Variant): Void {
      var args = new ArrayList();
      args.append(rid);
      getNative().call('free_rid', args);
  }
  public function generic6DofJointGetFlag(joint: Variant, axis: Int, flag: Int): Bool {
      var args = new ArrayList();
      args.append(joint);
      args.append(axis);
      args.append(flag);
      return getNative().call('generic_6dof_joint_get_flag', args);
  }
  public function generic6DofJointGetParam(joint: Variant, axis: Int, param: Int): Float {
      var args = new ArrayList();
      args.append(joint);
      args.append(axis);
      args.append(param);
      return getNative().call('generic_6dof_joint_get_param', args);
  }
  public function generic6DofJointSetFlag(joint: Variant, axis: Int, flag: Int, enable: Bool): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(axis);
      args.append(flag);
      args.append(enable);
      getNative().call('generic_6dof_joint_set_flag', args);
  }
  public function generic6DofJointSetParam(joint: Variant, axis: Int, param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(axis);
      args.append(param);
      args.append(value);
      getNative().call('generic_6dof_joint_set_param', args);
  }
  public function getProcessInfo(processInfo: Int): Int {
      var args = new ArrayList();
      args.append(processInfo);
      return getNative().call('get_process_info', args);
  }
  public function heightmapShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('heightmap_shape_create', args);
  }
  public function hingeJointGetFlag(joint: Variant, flag: Int): Bool {
      var args = new ArrayList();
      args.append(joint);
      args.append(flag);
      return getNative().call('hinge_joint_get_flag', args);
  }
  public function hingeJointGetParam(joint: Variant, param: Int): Float {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      return getNative().call('hinge_joint_get_param', args);
  }
  public function hingeJointSetFlag(joint: Variant, flag: Int, enabled: Bool): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(flag);
      args.append(enabled);
      getNative().call('hinge_joint_set_flag', args);
  }
  public function hingeJointSetParam(joint: Variant, param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      args.append(value);
      getNative().call('hinge_joint_set_param', args);
  }
  public function jointClear(joint: Variant): Void {
      var args = new ArrayList();
      args.append(joint);
      getNative().call('joint_clear', args);
  }
  public function jointCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('joint_create', args);
  }
  public function jointDisableCollisionsBetweenBodies(joint: Variant, disable: Bool): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(disable);
      getNative().call('joint_disable_collisions_between_bodies', args);
  }
  public function jointGetSolverPriority(joint: Variant): Int {
      var args = new ArrayList();
      args.append(joint);
      return getNative().call('joint_get_solver_priority', args);
  }
  public function jointGetType(joint: Variant): Int {
      var args = new ArrayList();
      args.append(joint);
      return getNative().call('joint_get_type', args);
  }
  public function jointIsDisabledCollisionsBetweenBodies(joint: Variant): Bool {
      var args = new ArrayList();
      args.append(joint);
      return getNative().call('joint_is_disabled_collisions_between_bodies', args);
  }
  public function jointMakeConeTwist(joint: Variant, bodyA: Variant, localRefA: Variant, bodyB: Variant, localRefB: Variant): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(bodyA);
      args.append(localRefA);
      args.append(bodyB);
      args.append(localRefB);
      getNative().call('joint_make_cone_twist', args);
  }
  public function jointMakeGeneric6Dof(joint: Variant, bodyA: Variant, localRefA: Variant, bodyB: Variant, localRefB: Variant): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(bodyA);
      args.append(localRefA);
      args.append(bodyB);
      args.append(localRefB);
      getNative().call('joint_make_generic_6dof', args);
  }
  public function jointMakeHinge(joint: Variant, bodyA: Variant, hingeA: Variant, bodyB: Variant, hingeB: Variant): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(bodyA);
      args.append(hingeA);
      args.append(bodyB);
      args.append(hingeB);
      getNative().call('joint_make_hinge', args);
  }
  public function jointMakePin(joint: Variant, bodyA: Variant, localA: Vector3, bodyB: Variant, localB: Vector3): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(bodyA);
      args.append(localA);
      args.append(bodyB);
      args.append(localB);
      getNative().call('joint_make_pin', args);
  }
  public function jointMakeSlider(joint: Variant, bodyA: Variant, localRefA: Variant, bodyB: Variant, localRefB: Variant): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(bodyA);
      args.append(localRefA);
      args.append(bodyB);
      args.append(localRefB);
      getNative().call('joint_make_slider', args);
  }
  public function jointSetSolverPriority(joint: Variant, priority: Int): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(priority);
      getNative().call('joint_set_solver_priority', args);
  }
  public function pinJointGetLocalA(joint: Variant): Vector3 {
      var args = new ArrayList();
      args.append(joint);
      return getNative().call('pin_joint_get_local_a', args);
  }
  public function pinJointGetLocalB(joint: Variant): Vector3 {
      var args = new ArrayList();
      args.append(joint);
      return getNative().call('pin_joint_get_local_b', args);
  }
  public function pinJointGetParam(joint: Variant, param: Int): Float {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      return getNative().call('pin_joint_get_param', args);
  }
  public function pinJointSetLocalA(joint: Variant, localA: Vector3): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(localA);
      getNative().call('pin_joint_set_local_a', args);
  }
  public function pinJointSetLocalB(joint: Variant, localB: Vector3): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(localB);
      getNative().call('pin_joint_set_local_b', args);
  }
  public function pinJointSetParam(joint: Variant, param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      args.append(value);
      getNative().call('pin_joint_set_param', args);
  }
  public function separationRayShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('separation_ray_shape_create', args);
  }
  public function setActive(active: Bool): Void {
      var args = new ArrayList();
      args.append(active);
      getNative().call('set_active', args);
  }
  public function shapeGetData(shape: Variant): Variant {
      var args = new ArrayList();
      args.append(shape);
      return getNative().call('shape_get_data', args);
  }
  public function shapeGetMargin(shape: Variant): Float {
      var args = new ArrayList();
      args.append(shape);
      return getNative().call('shape_get_margin', args);
  }
  public function shapeGetType(shape: Variant): Int {
      var args = new ArrayList();
      args.append(shape);
      return getNative().call('shape_get_type', args);
  }
  public function shapeSetData(shape: Variant, data: Variant): Void {
      var args = new ArrayList();
      args.append(shape);
      args.append(data);
      getNative().call('shape_set_data', args);
  }
  public function shapeSetMargin(shape: Variant, margin: Float): Void {
      var args = new ArrayList();
      args.append(shape);
      args.append(margin);
      getNative().call('shape_set_margin', args);
  }
  public function sliderJointGetParam(joint: Variant, param: Int): Float {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      return getNative().call('slider_joint_get_param', args);
  }
  public function sliderJointSetParam(joint: Variant, param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(joint);
      args.append(param);
      args.append(value);
      getNative().call('slider_joint_set_param', args);
  }
  public function softBodyAddCollisionException(body: Variant, bodyB: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(bodyB);
      getNative().call('soft_body_add_collision_exception', args);
  }
  public function softBodyApplyCentralForce(body: Variant, force: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(force);
      getNative().call('soft_body_apply_central_force', args);
  }
  public function softBodyApplyCentralImpulse(body: Variant, impulse: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(impulse);
      getNative().call('soft_body_apply_central_impulse', args);
  }
  public function softBodyApplyPointForce(body: Variant, pointIndex: Int, force: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(pointIndex);
      args.append(force);
      getNative().call('soft_body_apply_point_force', args);
  }
  public function softBodyApplyPointImpulse(body: Variant, pointIndex: Int, impulse: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(pointIndex);
      args.append(impulse);
      getNative().call('soft_body_apply_point_impulse', args);
  }
  public function softBodyCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('soft_body_create', args);
  }
  public function softBodyGetCollisionLayer(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_collision_layer', args);
  }
  public function softBodyGetCollisionMask(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_collision_mask', args);
  }
  public function softBodyGetDampingCoefficient(body: Variant): Float {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_damping_coefficient', args);
  }
  public function softBodyGetDragCoefficient(body: Variant): Float {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_drag_coefficient', args);
  }
  public function softBodyGetLinearStiffness(body: Variant): Float {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_linear_stiffness', args);
  }
  public function softBodyGetPointGlobalPosition(body: Variant, pointIndex: Int): Vector3 {
      var args = new ArrayList();
      args.append(body);
      args.append(pointIndex);
      return getNative().call('soft_body_get_point_global_position', args);
  }
  public function softBodyGetPressureCoefficient(body: Variant): Float {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_pressure_coefficient', args);
  }
  public function softBodyGetShrinkingFactor(body: Variant): Float {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_shrinking_factor', args);
  }
  public function softBodyGetSimulationPrecision(body: Variant): Int {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_simulation_precision', args);
  }
  public function softBodyGetSpace(body: Variant): Variant {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_space', args);
  }
  public function softBodyGetState(body: Variant, state: Int): Variant {
      var args = new ArrayList();
      args.append(body);
      args.append(state);
      return getNative().call('soft_body_get_state', args);
  }
  public function softBodyGetTotalMass(body: Variant): Float {
      var args = new ArrayList();
      args.append(body);
      return getNative().call('soft_body_get_total_mass', args);
  }
  public function softBodyIsPointPinned(body: Variant, pointIndex: Int): Bool {
      var args = new ArrayList();
      args.append(body);
      args.append(pointIndex);
      return getNative().call('soft_body_is_point_pinned', args);
  }
  public function softBodyMovePoint(body: Variant, pointIndex: Int, globalPosition: Vector3): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(pointIndex);
      args.append(globalPosition);
      getNative().call('soft_body_move_point', args);
  }
  public function softBodyPinPoint(body: Variant, pointIndex: Int, pin: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(pointIndex);
      args.append(pin);
      getNative().call('soft_body_pin_point', args);
  }
  public function softBodyRemoveAllPinnedPoints(body: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      getNative().call('soft_body_remove_all_pinned_points', args);
  }
  public function softBodyRemoveCollisionException(body: Variant, bodyB: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(bodyB);
      getNative().call('soft_body_remove_collision_exception', args);
  }
  public function softBodySetCollisionLayer(body: Variant, layer: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(layer);
      getNative().call('soft_body_set_collision_layer', args);
  }
  public function softBodySetCollisionMask(body: Variant, mask: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(mask);
      getNative().call('soft_body_set_collision_mask', args);
  }
  public function softBodySetDampingCoefficient(body: Variant, dampingCoefficient: Float): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(dampingCoefficient);
      getNative().call('soft_body_set_damping_coefficient', args);
  }
  public function softBodySetDragCoefficient(body: Variant, dragCoefficient: Float): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(dragCoefficient);
      getNative().call('soft_body_set_drag_coefficient', args);
  }
  public function softBodySetLinearStiffness(body: Variant, stiffness: Float): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(stiffness);
      getNative().call('soft_body_set_linear_stiffness', args);
  }
  public function softBodySetMesh(body: Variant, mesh: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(mesh);
      getNative().call('soft_body_set_mesh', args);
  }
  public function softBodySetPressureCoefficient(body: Variant, pressureCoefficient: Float): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(pressureCoefficient);
      getNative().call('soft_body_set_pressure_coefficient', args);
  }
  public function softBodySetRayPickable(body: Variant, enable: Bool): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(enable);
      getNative().call('soft_body_set_ray_pickable', args);
  }
  public function softBodySetShrinkingFactor(body: Variant, shrinkingFactor: Float): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(shrinkingFactor);
      getNative().call('soft_body_set_shrinking_factor', args);
  }
  public function softBodySetSimulationPrecision(body: Variant, simulationPrecision: Int): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(simulationPrecision);
      getNative().call('soft_body_set_simulation_precision', args);
  }
  public function softBodySetSpace(body: Variant, space: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(space);
      getNative().call('soft_body_set_space', args);
  }
  public function softBodySetState(body: Variant, state: Int, variant: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(state);
      args.append(variant);
      getNative().call('soft_body_set_state', args);
  }
  public function softBodySetTotalMass(body: Variant, totalMass: Float): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(totalMass);
      getNative().call('soft_body_set_total_mass', args);
  }
  public function softBodySetTransform(body: Variant, transform: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(transform);
      getNative().call('soft_body_set_transform', args);
  }
  public function softBodyUpdateRenderingServer(body: Variant, renderingServerHandler: Variant): Void {
      var args = new ArrayList();
      args.append(body);
      args.append(renderingServerHandler);
      getNative().call('soft_body_update_rendering_server', args);
  }
  public function spaceCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('space_create', args);
  }
  public function spaceGetParam(space: Variant, param: Int): Float {
      var args = new ArrayList();
      args.append(space);
      args.append(param);
      return getNative().call('space_get_param', args);
  }
  public function spaceIsActive(space: Variant): Bool {
      var args = new ArrayList();
      args.append(space);
      return getNative().call('space_is_active', args);
  }
  public function spaceSetActive(space: Variant, active: Bool): Void {
      var args = new ArrayList();
      args.append(space);
      args.append(active);
      getNative().call('space_set_active', args);
  }
  public function spaceSetParam(space: Variant, param: Int, value: Float): Void {
      var args = new ArrayList();
      args.append(space);
      args.append(param);
      args.append(value);
      getNative().call('space_set_param', args);
  }
  public function sphereShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('sphere_shape_create', args);
  }
  public function worldBoundaryShapeCreate(): Variant {
      var args = new ArrayList();
      return getNative().call('world_boundary_shape_create', args);
  }
}
