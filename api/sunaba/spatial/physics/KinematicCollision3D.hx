package sunaba.spatial.physics;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.core.Signal;
import sunaba.core.Vector3;

class KinematicCollision3D extends Reference {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('KinematicCollision3D');
        }
        this.native = _native;
    }



  public function getAngle(?collisionIndex: Int, ?upDirection: Vector3): Float {
      var args = new ArrayList();
      if (collisionIndex != null) {
          args.append(collisionIndex);
      }
      if (upDirection != null) {
          args.append(upDirection);
      }
      return native.call('get_angle', args);
  }
  public function getColliderId(?collisionIndex: Int): Int {
      var args = new ArrayList();
      if (collisionIndex != null) {
          args.append(collisionIndex);
      }
      return native.call('get_collider_id', args);
  }
  public function getColliderRid(?collisionIndex: Int): Int {
      var args = new ArrayList();
      if (collisionIndex != null) {
          args.append(collisionIndex);
      }
      return native.call('get_collider_rid', args);
  }
  public function getColliderShapeIndex(?collisionIndex: Int): Int {
      var args = new ArrayList();
      if (collisionIndex != null) {
          args.append(collisionIndex);
      }
      return native.call('get_collider_shape_index', args);
  }
  public function getColliderVelocity(?collisionIndex: Int): Vector3 {
      var args = new ArrayList();
      if (collisionIndex != null) {
          args.append(collisionIndex);
      }
      return native.call('get_collider_velocity', args);
  }
	public function getCollider(?collisionIndex: Int): Node {
		var args = new ArrayList();
		if (collisionIndex != null) {
			args.append(collisionIndex);
		}
		return new Node(native.call('get_collider', args));
	}
	public function getCollisionCount(): Int {
      var args = new ArrayList();
      return native.call('get_collision_count', args);
  }
  public function getDepth(): Float {
      var args = new ArrayList();
      return native.call('get_depth', args);
  }
  public function getNormal(?collisionIndex: Int): Vector3 {
      var args = new ArrayList();
      if (collisionIndex != null) {
          args.append(collisionIndex);
      }
      return native.call('get_normal', args);
  }
  public function getPosition(?collisionIndex: Int): Vector3 {
      var args = new ArrayList();
      if (collisionIndex != null) {
          args.append(collisionIndex);
      }
      return native.call('get_position', args);
  }
  public function getRemainder(): Vector3 {
      var args = new ArrayList();
      return native.call('get_remainder', args);
  }
  public function getTravel(): Vector3 {
      var args = new ArrayList();
      return native.call('get_travel', args);
  }
}
