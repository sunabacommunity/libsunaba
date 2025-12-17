package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Vector3;
import sunaba.core.Quaternion;
import sunaba.core.Basis;
import sunaba.core.Signal;
import sunaba.core.Dictionary;

class GLTFPhysicsBody extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFPhysicsBody');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFPhysicsBody', native];
        scriptLoader.call('loadScript', args);
    }

    public var angularVelocity(get, set): Vector3;
    function get_angularVelocity(): Vector3 {
        return native.get('angular_velocity');
    }
    function set_angularVelocity(value: Vector3): Vector3 {
      native.set('angular_velocity', value);
        return value;
    }
    public var bodyType(get, set): String;
    function get_bodyType(): String {
        return native.get('body_type');
    }
    function set_bodyType(value: String): String {
      native.set('body_type', value);
        return value;
    }
    public var centerOfMass(get, set): Vector3;
    function get_centerOfMass(): Vector3 {
        return native.get('center_of_mass');
    }
    function set_centerOfMass(value: Vector3): Vector3 {
      native.set('center_of_mass', value);
        return value;
    }
    public var inertiaDiagonal(get, set): Vector3;
    function get_inertiaDiagonal(): Vector3 {
        return native.get('inertia_diagonal');
    }
    function set_inertiaDiagonal(value: Vector3): Vector3 {
      native.set('inertia_diagonal', value);
        return value;
    }
    public var inertiaOrientation(get, set): Quaternion;
    function get_inertiaOrientation(): Quaternion {
        return native.get('inertia_orientation');
    }
    function set_inertiaOrientation(value: Quaternion): Quaternion {
      native.set('inertia_orientation', value);
        return value;
    }
    public var inertiaTensor(get, set): Basis;
    function get_inertiaTensor(): Basis {
        return native.get('inertia_tensor');
    }
    function set_inertiaTensor(value: Basis): Basis {
      native.set('inertia_tensor', value);
        return value;
    }
    public var linearVelocity(get, set): Vector3;
    function get_linearVelocity(): Vector3 {
        return native.get('linear_velocity');
    }
    function set_linearVelocity(value: Vector3): Vector3 {
      native.set('linear_velocity', value);
        return value;
    }
    public var mass(get, set): Float;
    function get_mass(): Float {
        return native.get('mass');
    }
    function set_mass(value: Float): Float {
      native.set('mass', value);
        return value;
    }


  public static function fromDictionary(dictionary: Dictionary): GLTFPhysicsBody {
      var args = new ArrayList();
      args.append(dictionary);
      var ref: NativeReference = NativeObject.callStatic('GLTFPhysicsBody', 'from_dictionary', args);
      return new GLTFPhysicsBody(ref);
  }
  public static function fromNode(bodyNode: Variant): GLTFPhysicsBody {
      var args = new ArrayList();
      args.append(bodyNode);
      var ref: NativeReference = NativeObject.callStatic('GLTFPhysicsBody', 'from_node', args);
      return new GLTFPhysicsBody(ref);
  }
  public function toDictionary(): Dictionary {
      var args = new ArrayList();
      return native.call('to_dictionary', args);
  }
}
