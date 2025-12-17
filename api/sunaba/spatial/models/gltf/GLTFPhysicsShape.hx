package sunaba.spatial.models.gltf;

import sunaba.core.native.NativeReference;
import sunaba.core.native.NativeObject;
import sunaba.core.Variant;
import sunaba.core.Reference;
import sunaba.core.Object;
import sunaba.core.ArrayList;
import sunaba.Resource;
import sunaba.core.Vector3;
import sunaba.core.Signal;
import sunaba.core.Dictionary;

class GLTFPhysicsShape extends Resource {
    public override function nativeInit(?_native: NativeReference) {
        if (_native == null) {
            _native = new NativeReference('GLTFPhysicsShape');
        }
        this.native = _native;
        var scriptLoader = new NativeReference('res://Engine/SrciptLoader.gd', new ArrayList(), 1);
        var args: Array<Variant> = ['GLTFPhysicsShape', native];
        scriptLoader.call('loadScript', args);
    }

    public var height(get, set): Float;
    function get_height(): Float {
        return native.get('height');
    }
    function set_height(value: Float): Float {
      native.set('height', value);
        return value;
    }
    public var isTrigger(get, set): Bool;
    function get_isTrigger(): Bool {
        return native.get('is_trigger');
    }
    function set_isTrigger(value: Bool): Bool {
      native.set('is_trigger', value);
        return value;
    }
    public var meshIndex(get, set): Int;
    function get_meshIndex(): Int {
        return native.get('mesh_index');
    }
    function set_meshIndex(value: Int): Int {
      native.set('mesh_index', value);
        return value;
    }
    public var radius(get, set): Float;
    function get_radius(): Float {
        return native.get('radius');
    }
    function set_radius(value: Float): Float {
      native.set('radius', value);
        return value;
    }
    public var shapeType(get, set): String;
    function get_shapeType(): String {
        return native.get('shape_type');
    }
    function set_shapeType(value: String): String {
      native.set('shape_type', value);
        return value;
    }
    public var size(get, set): Vector3;
    function get_size(): Vector3 {
        return native.get('size');
    }
    function set_size(value: Vector3): Vector3 {
      native.set('size', value);
        return value;
    }


  public static function fromDictionary(dictionary: Dictionary): GLTFPhysicsShape {
      var args = new ArrayList();
      args.append(dictionary);
      var ref: NativeReference = NativeObject.callStatic('GLTFPhysicsShape', 'from_dictionary', args);
      return new GLTFPhysicsShape(ref);
  }
  public static function fromNode(shapeNode: Variant): GLTFPhysicsShape {
      var args = new ArrayList();
      args.append(shapeNode);
      var ref: NativeReference = NativeObject.callStatic('GLTFPhysicsShape', 'from_node', args);
      return new GLTFPhysicsShape(ref);
  }
  public static function fromResource(shapeResource: Variant): GLTFPhysicsShape {
      var args = new ArrayList();
      args.append(shapeResource);
      var ref: NativeReference = NativeObject.callStatic('GLTFPhysicsShape', 'from_resource', args);
      return new GLTFPhysicsShape(ref);
  }
  public function toDictionary(): Dictionary {
      var args = new ArrayList();
      return native.call('to_dictionary', args);
  }
}
